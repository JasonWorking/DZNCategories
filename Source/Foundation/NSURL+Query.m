//
//  NSURL+Query.m
//
//  Created by Ignacio Romero Zurbuchen on 4/19/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSURL+Query.h"

@implementation NSURL (Query)

- (BOOL)hasScheme
{
    return ([self scheme]) ? YES : NO;
}

- (NSString *)verb
{
    NSArray *pairs = [[self absoluteString] componentsSeparatedByString:@"?"];
    
    for (NSString *pair in pairs) {
        NSArray *elements = [pair componentsSeparatedByString:@"/"];
        return [elements lastObject];
    }
    
    return nil;
}

- (NSDictionary *)parametersString
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:0];
    NSArray *pairs = [[self query] componentsSeparatedByString:@"&"];
    
    for (NSString *pair in pairs) {
        NSArray *elements = [pair componentsSeparatedByString:@"="];
        NSString *key = [[elements objectAtIndex:0] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSString *val = [[elements objectAtIndex:1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [dict setObject:val forKey:key];
    }
    return dict;
}

@end

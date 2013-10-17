//
//  NSURL+Query.m
//
//  Created by Ignacio Romero Zurbuchen on 4/19/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSURL+Query.h"
#import "NSArray+Query.h"

@implementation NSURL (Query)

- (BOOL)hasScheme
{
    return ([self scheme]) ? YES : NO;
}

- (NSString *)noun
{
    for (NSString *pair in [self pairs]) {
        NSArray *elements = [pair componentsSeparatedByString:@"/"];
        if (elements.count > 1) {
            return [elements objectAtIndex:0];
        }
    }
    return nil;
}

- (NSString *)verb
{
    for (NSString *pair in [self pairs]) {
        NSArray *elements = [pair componentsSeparatedByString:@"/"];
        return [elements lastObject];
    }
    return nil;
}

- (NSArray *)pairs
{
    NSString *body = [[self absoluteString] stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@://",[self scheme]] withString:@""];
    return [body componentsSeparatedByString:@"?"];
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

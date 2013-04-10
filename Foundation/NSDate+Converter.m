//
//  NSDate+Converter.m
//
//  Created by Ignacio Romero Zurbuchen on 2/6/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSDate+Converter.h"

@implementation NSDate (Converter)

+ (NSDate *)dateFromString:(NSString *)string andFormat:(NSString *)format
{
    [NSDateFormatter setDefaultFormatterBehavior:NSDateFormatterBehaviorDefault];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    
    return [dateFormatter dateFromString:string];
}

- (NSString *)stringFromDateWithFormat:(NSString *)format
{
    if (!self) return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:format];
    
    return [[dateFormatter stringFromDate:self] capitalizedString];
}

@end

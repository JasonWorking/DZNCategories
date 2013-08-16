//
//  NSDate+Comparison.m
//  Connectae
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "NSDate+Comparison.h"

@implementation NSDate (Comparison)

- (BOOL)isToday
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:(NSEraCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:[NSDate date]];
    NSDate *today = [cal dateFromComponents:components];
    
    components = [cal components:(NSEraCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:self];
    NSDate *otherDate = [cal dateFromComponents:components];

    return ([today compare:otherDate] == NSOrderedSame);
}

#warning Incomplete Implementation
- (BOOL)isYesterday
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSDate *date = [NSDate date];
    NSDateComponents *comps = [cal components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:date];
    NSDate *today = [cal dateFromComponents:comps];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:-1];
    NSDate *yesterday = [cal dateByAddingComponents:components toDate:today options:0];
    
    components = [cal components:(NSEraCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:self];
    NSDate *otherDate = [cal dateFromComponents:components];
    
    return ([yesterday compare:otherDate] == NSOrderedSame);
}

@end

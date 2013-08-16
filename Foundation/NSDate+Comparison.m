//
//  NSDate+Comparison.m
//  Connectae
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "NSDate+Comparison.h"

@implementation NSDate (Comparison)

#warning Incomplete Implementation
- (BOOL)isToday
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:(NSEraCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:[NSDate date]];
    NSDate *today = [cal dateFromComponents:components];
    components = [cal components:(NSEraCalendarUnit|NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:self];
    NSDate *otherDate = [cal dateFromComponents:components];

    return ([today compare:otherDate] == NSOrderedSame);
}

#warning Incomplete Implementation
- (BOOL)isYesterday
{
    return NO;
}

@end

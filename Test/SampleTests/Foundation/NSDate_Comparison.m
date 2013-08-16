//
//  NSDate+Comparison.m
//  Sample
//
//  Created by Ignacio on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "NSDate_Comparison.h"
#import "NSDate+Comparison.h"
#import "NSDate+Converter.h"
#import "NSDate+Calendar.h"

@implementation NSDate_Comparison

+ (void)testIsToday
{
    NSDate *aDate = [NSDate new];
    NSAssert([aDate isToday], @"NSDate+Comparison: @testIsToday");
}

+ (void)testIsNotToday
{
    NSTimeInterval day = 60*60*24;
    NSDate *aDate = [NSDate dateWithTimeInterval:day sinceDate:[NSDate new]];
    NSAssert(![aDate isToday], @"NSDate+Comparison: @testIsNotToday");
}

+ (void)testIsYesterday
{
    NSTimeInterval day = 60*60*24;
    NSDate *aDate = [NSDate dateWithTimeInterval:-day sinceDate:[NSDate new]];
    NSAssert([aDate isYesterday], @"NSDate+Comparison: @testIsYesterday");
}

+ (void)testIsNotYesterday
{
    NSDate *aDate = [NSDate today];
    NSAssert(![aDate isYesterday], @"NSDate+Comparison: @testIsNotYesterday");
}

+ (void)testIsFirstDayOfMonth
{
    NSDate *aDate = [NSDate dateForDay:1 month:3 andYear:2013];
    NSAssert(![aDate isFirstDayOfMonth], @"NSDate+Comparison: @testIsFirstDayOfMonth");
}

+ (void)testIsNotFirstDayOfMonth
{
    NSDate *aDate = [NSDate dateForDay:5 month:3 andYear:2013];
    NSAssert(![aDate isFirstDayOfMonth], @"NSDate+Comparison: @testIsNotFirstDayOfMonth");
}

@end

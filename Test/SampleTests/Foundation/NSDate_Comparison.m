//
//  NSDate+Comparison.m
//  Sample
//
//  Created by Ignacio on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "NSDate_Comparison.h"
#import "NSDate+Comparison.h"

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

+ (void)testIsTomorrow
{
    NSTimeInterval day = 60*60*24;
    NSDate *aDate = [NSDate dateWithTimeInterval:-day sinceDate:[NSDate new]];
    NSAssert([aDate isYesterday], @"NSDate+Comparison: @testIsTomorrow");
}

+ (void)testIsNotTomorrow
{
    NSTimeInterval day = 60*60*24*5;
    NSDate *aDate = [NSDate dateWithTimeInterval:-day sinceDate:[NSDate new]];
    NSAssert(![aDate isYesterday], @"NSDate+Comparison: @testIsNotTomorrow");
}

@end

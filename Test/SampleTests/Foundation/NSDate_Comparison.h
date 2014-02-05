//
//  NSDate+Comparison.h
//  Sample
//
//  Created by Ignacio Romero Zurbuchen on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface NSDate_Comparison : SenTestCase

+ (void)testIsToday;
+ (void)testIsNotToday;

+ (void)testIsYesterday;
+ (void)testIsNotYesterday;

+ (void)testIsFirstDayOfMonth;
+ (void)testIsNotFirstDayOfMonth;

@end

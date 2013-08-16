//
//  NSDate+Calendar.h
//  Sample
//
//  Created by Ignacio on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Calendar)

+ (NSCalendar *)userCalendar;

+ (NSUInteger)fullCalendarComponents;
+ (NSUInteger)dayCalendarComponents;

+ (NSDate *)today;
+ (NSDate *)todayByComponents:(NSUInteger)comp;

+ (NSDate *)yesterday;
+ (NSDate *)yesterdayByComponents:(NSUInteger)comp;

- (NSInteger)weekdayUnit;

@end

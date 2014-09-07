//
//  FoundationTests.m
//  Sample
//
//  Created by Ignacio Romero Z. on 9/7/14.
//  Copyright (c) 2014 DZen Interaktiv. All rights reserved.
//

#import <Kiwi/Kiwi.h>

#import <DZNCategories/Foundation/NSDate+Calendar.h>
#import <DZNCategories/Foundation/NSDate+Comparison.h>
#import <DZNCategories/Foundation/NSDate+Converter.h>

SPEC_BEGIN(FoundationTests)

describe(@"NSDate Comparison", ^{
    
    it(@"should compare date to match today/yesterday/tomorrow", ^{
        NSDate *today = [NSDate today];
        NSDate *yesterday = [NSDate yesterday];
        
        [[@([today isToday]) should] beTrue];
        [[@([yesterday isYesterday]) should] beTrue];
    });
    
    it(@"should compare date to match 1st of month", ^{
        NSDate *firstDay = [NSDate dateForDay:1 month:3 andYear:2013];
        NSDate *someDay = [NSDate dateForDay:5 month:3 andYear:2013];
        
        [[@([firstDay isFirstDayOfMonth]) should] beTrue];
        [[@([someDay isFirstDayOfMonth]) should] beFalse];
    });
});

SPEC_END
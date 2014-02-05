//
//  Foundation_Test.m
//  Sample
//
//  Created by Ignacio Romero Zurbuchen on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "Foundation_Test.h"
#import "NSDate_Comparison.h"
#import "NSDate_Converter.h"
#import "NSString_Drawing.h"

@implementation Foundation_Test

+ (void)testNSArrayQuery
{
    
}

+ (void)testNSArraySafe
{
    
}

+ (void)testNSDateComparison
{
    [NSDate_Comparison testIsToday];
    [NSDate_Comparison testIsNotToday];
    
    [NSDate_Comparison testIsYesterday];
    [NSDate_Comparison testIsNotYesterday];
    
//    [NSDate_Comparison testIsFirstDayOfMonth];
//    [NSDate_Comparison testIsNotFirstDayOfMonth];
}

+ (void)testNSDateConverter
{
    
}

+ (void)testNSDictionarySafe
{
    
}

+ (void)testNSMutableArraySave
{
    
}

+ (void)testNSMutableDictionarySafe
{
    
}

+ (void)testNSObjectSystem
{
    
}

+ (void)testNSStringCase
{
    
}

+ (void)testNSStringDrawing
{
    [NSString_Drawing testReducedString];
}

+ (void)testNSStringPath
{
    
}

+ (void)testNSStringRegex
{
    
}

+ (void)testNSStringSecurity
{
    
}

+ (void)testNSURLQuery
{
    
}

+ (void)testNSUserDefaultsCustom
{
    
}

@end

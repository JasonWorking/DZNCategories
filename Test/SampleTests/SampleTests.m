//
//  SampleTests.m
//  SampleTests
//
//  Created by Ignacio Romero Zurbuchen on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "SampleTests.h"
#import "DZNCategoriesTest.h"

@implementation SampleTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testCategories
{
    [DZNCategoriesTest testUIKit];
    [DZNCategoriesTest testFoundation];
    [DZNCategoriesTest testCoreLocation];
    [DZNCategoriesTest testCoreGraphics];
    [DZNCategoriesTest testCoreData];
}

@end

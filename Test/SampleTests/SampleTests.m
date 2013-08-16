//
//  SampleTests.m
//  SampleTests
//
//  Created by Ignacio on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "SampleTests.h"
#import "DZCategoriesTest.h"

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
    [DZCategoriesTest testUIKit];
    [DZCategoriesTest testFoundation];
    [DZCategoriesTest testCoreLocation];
    [DZCategoriesTest testCoreGraphics];
    [DZCategoriesTest testCoreData];
}

@end

//
//  UIKitTests.m
//  Sample
//
//  Created by Ignacio Romero Z. on 9/7/14.
//  Copyright (c) 2014 DZen Interaktiv. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import <DZNCategories/UIKit/UIView+Frame.h>
#import <DZNCategories/UIKit/NSString+Drawing.h>

static NSString *lorem = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis rhoncus leo. Integer id lacus vitae massa interdum cursus nec vitae orci. Donec molestie pellentesque ligula, nec vehicula lorem fermentum malesuada. Suspendisse vitae facilisis quam. In ac euismod sapien, euismod dapibus dolor. Fusce purus dolor, bibendum id tortor ut, aliquet cursus dolor. Donec ac turpis vel lectus scelerisque sodales. Praesent nunc enim, pharetra eget orci quis, tempus interdum tortor. In iaculis luctus venenatis. Aenean nibh ante, sollicitudin non rutrum vel, eleifend nec nisl. Etiam ut ante accumsan, tristique arcu in, sagittis quam. Mauris ornare porta sapien vel interdum.";

SPEC_BEGIN(UIKitTests)

describe(@"UIView+Frame", ^{
    
    __block UIView *aView = nil;
    
    beforeAll(^{
        aView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 20.0, 300.0, 440.0)];
    });
    
    it(@"should get right values", ^{
        [[@(aView.x) should] equal:@10];
        [[@(aView.y) should] equal:@20];
        [[@(aView.width) should] equal:@300];
        [[@(aView.height) should] equal:@440];
    });
    
    it(@"should set right values", ^{
        aView.x = 20.0;
        aView.y = 30.0;
        aView.width = 984.0;
        aView.height = 708.0;
        
        [[@(aView.x) should] equal:@20];
        [[@(aView.y) should] equal:@30];
        [[@(aView.width) should] equal:@984];
        [[@(aView.height) should] equal:@708];
    });
});


describe(@"NSString+Drawing", ^{
    
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    paragraphStyle.alignment = NSTextAlignmentLeft;
    
    NSString *drawedText = [lorem visibleStringWithinSize:CGSizeMake(320.0, 40) withFont:[UIFont systemFontOfSize:15.0] andParagraphStyle:paragraphStyle];
    NSLog(@"drawedText : %@", drawedText);
    
    [[@(drawedText.length) should] beGreaterThan:@0];
});

SPEC_END

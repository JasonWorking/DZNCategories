//
//  NSString_Drawing.m
//  Sample
//
//  Created by Ignacio Romero Zurbuchen on 11/16/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "NSString_Drawing.h"
#import "NSString+Drawing.h"

static NSString *lorem = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis rhoncus leo. Integer id lacus vitae massa interdum cursus nec vitae orci. Donec molestie pellentesque ligula, nec vehicula lorem fermentum malesuada. Suspendisse vitae facilisis quam. In ac euismod sapien, euismod dapibus dolor. Fusce purus dolor, bibendum id tortor ut, aliquet cursus dolor. Donec ac turpis vel lectus scelerisque sodales. Praesent nunc enim, pharetra eget orci quis, tempus interdum tortor. In iaculis luctus venenatis. Aenean nibh ante, sollicitudin non rutrum vel, eleifend nec nisl. Etiam ut ante accumsan, tristique arcu in, sagittis quam. Mauris ornare porta sapien vel interdum.";

@implementation NSString_Drawing

+ (void)testReducedString
{
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    paragraphStyle.alignment = NSTextAlignmentLeft;
    
    NSString *drawedText = [lorem visibleStringWithinSize:CGSizeMake(320.0, 40) withFont:[UIFont systemFontOfSize:15.0] andParagraphStyle:paragraphStyle];
    NSLog(@"drawedText : %@", drawedText);
    
    NSAssert((drawedText.length > 0), @"NSString+Drawing: @testReducedString");
}

@end

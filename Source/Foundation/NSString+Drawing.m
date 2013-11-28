//
//  NSString+Drawing.m
//  EpicList
//
//  Created by Ignacio on 11/16/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "NSString+Drawing.h"

@implementation NSString (Drawing)

- (NSInteger)numberOfLinesWithinSize:(CGSize)size withFont:(UIFont *)font
{
    return (NSInteger)size.height/font.lineHeight;
}

- (NSInteger)numberOfLineBreaks
{
    NSInteger numberOfBreaks = [self componentsSeparatedByString:@"\n"].count;
    if (numberOfBreaks > 1) return numberOfBreaks-1;
    else return 0;
}

- (NSUInteger)visibleStringLengthWithinSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style
{
    return [self visibleStringWithinSize:size withFont:font andParagraphStyle:style].length;
}

- (NSString *)visibleStringWithinSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style
{
    CGSize sizeConstraint = CGSizeMake(size.width, CGFLOAT_MAX);

    NSDictionary *att = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:style};
    NSStringDrawingOptions options = (NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading);
    
    CGRect textRect = [self boundingRectWithSize:sizeConstraint options:options attributes:att context:nil];

    if (textRect.size.height > size.height) {
        
        for (int i = 1; i < [self length]; i++) {
            
            NSString *reducedString = [self substringToIndex:i];
            CGRect reducedRect = [reducedString boundingRectWithSize:sizeConstraint options:options attributes:att context:nil];
            
            if (reducedRect.size.height > size.height) {
                
                return [self substringToIndex:i-1];
            }
        }
    }
    
    return self;
}

@end

//
//  NSString+Drawing.m
//  EpicList
//
//  Created by Ignacio on 11/16/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "NSString+Drawing.h"

@implementation NSString (Drawing)

- (CGFloat)lineHeightWithFont:(UIFont *)font
{
    CGRect boundingRect = [self boundingRectWithSize:CGSizeMake(0, FLT_MAX) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName: font} context:nil];
    return roundf(boundingRect.size.height);
}

- (NSInteger)numberOfLinesOnSize:(CGSize)size withFont:(UIFont *)font
{
    CGFloat lineHeight = [self lineHeightWithFont:font];
    return (NSInteger)size.height/lineHeight;
}

- (NSUInteger)visibleStringLengthFromSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style
{
    return [self visibleStringFromSize:size withFont:font andParagraphStyle:style].length;
}

- (NSString *)visibleStringFromSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style
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

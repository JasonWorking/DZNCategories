//
//  NSString+Drawing.h
//  EpicList
//
//  Created by Ignacio on 11/16/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface NSString (Drawing)

- (CGFloat)lineHeightWithFont:(UIFont *)font;

- (NSInteger)numberOfLinesOnSize:(CGSize)size withFont:(UIFont *)font;

- (NSUInteger)visibleStringLengthFromSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style;

- (NSString *)visibleStringFromSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style;

@end

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

- (NSInteger)numberOfLinesWithinSize:(CGSize)size withFont:(UIFont *)font;

- (NSInteger)numberOfLineBreaks;

- (NSUInteger)visibleStringLengthWithinSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style;

- (NSString *)visibleStringWithinSize:(CGSize)size withFont:(UIFont *)font andParagraphStyle:(NSParagraphStyle *)style;

@end

//
//  UIView+Frame.h
//  DZNCategories
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <UIKit/UIKit.h>

/*
 * Useful methods to simplify the way to modify a CoreGraphic rectangle.
 */
@interface UIView (Frame)

// Gets or Sets a value
@property (nonatomic, readwrite) CGFloat x;
@property (nonatomic, readwrite) CGFloat y;
@property (nonatomic, readwrite) CGFloat width;
@property (nonatomic, readwrite) CGFloat height;
@property (nonatomic, readwrite) CGPoint origin;
@property (nonatomic, readwrite) CGSize size;

// Sums a value. Can also substract by setting a negative value.
- (void)addToX:(CGFloat)value;
- (void)addToY:(CGFloat)value;
- (void)addToWidth:(CGFloat)value;
- (void)addToHeight:(CGFloat)value;

// Multiplies with a value. Can also divide by setting a decimal value.
- (void)multiplyToX:(CGFloat)value;
- (void)multiplyToY:(CGFloat)value;
- (void)multiplyToWidth:(CGFloat)value;
- (void)multiplyToHeight:(CGFloat)value;

// Deprecated
- (void)setFrameOriginX:(CGFloat)x DEPRECATED_ATTRIBUTE;
- (void)setFrameOriginY:(CGFloat)y DEPRECATED_ATTRIBUTE;
- (void)setFrameWidth:(CGFloat)width DEPRECATED_ATTRIBUTE;
- (void)setFrameHeight:(CGFloat)height DEPRECATED_ATTRIBUTE;
- (void)setFrameOrigin:(CGPoint)origin DEPRECATED_ATTRIBUTE;
- (void)setFrameSize:(CGSize)size DEPRECATED_ATTRIBUTE;

@end

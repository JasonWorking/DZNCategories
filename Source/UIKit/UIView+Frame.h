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

@property (nonatomic, readwrite) CGFloat x;
@property (nonatomic, readwrite) CGFloat y;

@property (nonatomic, readwrite) CGFloat width;
@property (nonatomic, readwrite) CGFloat height;

@property (nonatomic, readwrite) CGPoint origin;
@property (nonatomic, readwrite) CGSize size;

- (void)addToX:(CGFloat)value;
- (void)addToY:(CGFloat)value;
- (void)addToWidth:(CGFloat)value;
- (void)addToHeight:(CGFloat)value;

@end

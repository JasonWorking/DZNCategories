//
//  UIView+Frame.h
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

/**
 */
- (void)setFrameSize:(CGSize)newSize;

/** 
 */
- (void)setFrameWidth:(CGFloat)newWidth;

/**
 */
- (void)setFrameHeight:(CGFloat)newHeight;

/**
 */
- (void)setFrameOrigin:(CGPoint)newOrigin;

/**
 */
- (void)setFrameOriginX:(CGFloat)newX;

/**
 */
- (void)setFrameOriginY:(CGFloat)newY;

/**
 */
- (void)addWidth:(CGFloat)newWidth;

/**
 */
- (void)addHeight:(CGFloat)newHeight;

/**
 */
- (void)addOriginX:(CGFloat)newX;

/**
 */
- (void)addOriginY:(CGFloat)newY;

/**
 */
- (void)addSizeWidth:(CGFloat)newWidth;

/**
 */
- (void)addSizeHeight:(CGFloat)newHeight;

@end

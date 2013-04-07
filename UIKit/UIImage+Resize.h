//
//  UIImage+Resize.h
//  ADedo
//
//  Created by Ignacio on 4/7/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Resize)

/**
 * Scales the image to the specified rect size.
 *
 * @params rect The rect to which the image should be scaled.
 * @returns A new scaled image.
 */
- (UIImage *)imageAtRect:(CGRect)rect;

/**
 */
- (UIImage *)imageScaledFittingToSize:(CGSize)size;

/**
 * Scales proportionally the image to the specified size.
 *
 * @params targetSize The size to which the image should proportionally be scaled.
 * @returns A new scaled image.
 */
- (UIImage *)imageByScalingProportionallyToSize:(CGSize)targetSize;

/**
 * Checks if the image as an alpha channel.
 */
- (BOOL)isProportionalToSize:(CGSize)size;

@end

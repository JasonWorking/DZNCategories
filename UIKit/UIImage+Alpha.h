//
//  UIImage+Alpha.h
//  ADedo
//
//  Created by Ignacio on 4/7/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * @brief Set of methods to manage alpha channels in UIImage objects.
 */
@interface UIImage (Alpha)

/**
 * Checks if the image as an alpha channel.
 */
- (BOOL)hasAlpha;

/**
 * Removes the alpha channel completly.
 *
 * @returns A new non-transparent image.
 */
- (UIImage *)removeAlpha;

/**
 * Fills the alpha channel with white color.
 *
 * @returns A new alpha-filled image.
 */
- (UIImage *)fillAlpha;

/**
 * Fills the alpha channel with a custom color.
 *
 * @params color The custom color of the alpha channel
 * @returns A new alpha-filled image.
 */
- (UIImage *)fillAlphaWithColor:(UIColor *)color;

@end

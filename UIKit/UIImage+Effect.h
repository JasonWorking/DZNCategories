//
//  UIImage+Effect.h
//
//  Created by Ignacio Romero Zurbuchen on 4/7/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <UIKit/UIKit.h>

/**
 * @brief
 */
@interface UIImage (Effect)

/**
 */
- (UIImage *)imageWithMask:(UIImage *)maskImg;

/**
 */
+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size;

/**
 * Transforms the image to grayscale.
 *
 * @returns The new grayscale image.
 */
- (UIImage *)imageToGrayscale;

@end

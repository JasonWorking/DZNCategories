//
//  UIImage+Effect.h
//
//  Created by Ignacio Romero Zurbuchen on 4/7/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <UIKit/UIKit.h>

/**
 * @brief Special effects to be applied to UIImage objects.
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

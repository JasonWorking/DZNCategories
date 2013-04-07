//
//  UIImage+Frame.h
//
//  Created by Ignacio Romero Zurbuchen on 4/7/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <UIKit/UIKit.h>

@interface UIImage (Splash)

/**
 * Returns the appropriate splash image based on the device type
 *
 * @returns A the original splash screen image.
 */
+ (UIImage *)splashImage;

/**
 * Returns the appropriate splash image based on the device type and orientation.
 *
 * @params orientation The orientation of the device.
 * @returns A the original splash screen image.
 */
+ (UIImage *)splashImageForInterfaceOrientation:(UIInterfaceOrientation)orientation;

@end

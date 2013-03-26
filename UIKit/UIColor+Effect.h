//
//  UIColor+Effect.h
//  ADedo
//
//  Created by Ignacio on 3/25/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * @brief Special effects to be applied to UIColor objects.
 */
@interface UIColor (Effect)

/**
 * Returns a darker color version of current color.
 *
 * @returns A darker color.
 */
- (UIColor *)darkerColor;

/**
 * Returns a lighter color version of current color.
 *
 * @returns A light color.
 */
- (UIColor *)lighterColor;

@end

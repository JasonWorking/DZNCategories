//
//  UIFont+System.h
//  EpicList
//
//  Created by Ignacio on 9/24/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 * Complementary methods to add missing system fonts to UIFont API.
 */
@interface UIFont (System)

/*
 * Returns the font object used for standard interface items that are rendered in boldface and italic type in the specified size.
 *
 * @param size The size (in points) to which the font is scaled. This value must be greater than 0.0.
 * @returns A font object of the specified size.
 */
+ (UIFont *)boldItalicSystemFontOfSize:(CGFloat)size;

/*
 * Returns the font object used for standard interface items that are rendered in medium boldface type in the specified size.
 *
 * @param size The size (in points) to which the font is scaled. This value must be greater than 0.0.
 * @returns A font object of the specified size.
 */
+ (UIFont *)mediumSystemFontOfSize:(CGFloat)size;

/*
 * Returns the font object used for standard interface items that are rendered in lightface type in the specified size.
 *
 * @param size The size (in points) to which the font is scaled. This value must be greater than 0.0.
 * @returns A font object of the specified size.
 */
+ (UIFont *)lightSystemFontOfSize:(CGFloat)size;

/*
 * Returns the font object used for standard interface items that are rendered in lightface & italic type in the specified size.
 *
 * @param size The size (in points) to which the font is scaled. This value must be greater than 0.0.
 * @returns A font object of the specified size.
 */
+ (UIFont *)lightItalicSystemFontOfSize:(CGFloat)size;

/*
 * Returns the font object used for standard interface items that are rendered in ultra lightface type in the specified size.
 *
 * @param size The size (in points) to which the font is scaled. This value must be greater than 0.0.
 * @returns A font object of the specified size.
 */
+ (UIFont *)ultraLightSystemFontOfSize:(CGFloat)size;

@end
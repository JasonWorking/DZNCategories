//
//  UIView+Effect.h
//
//  Created by Ignacio Romero Zurbuchen on 2/22/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

/**
 * @brief 
 */
@interface UIView (Effect)

/**
 * Adds rounded corners to the specified radius.
 *
 * @params radius The value of the corner radius.
 */
- (void)addCornerRadius:(CGFloat)radius;

/**
 * Adds rounded corners to the specified radius.
 *
 * @params radius The value of the corner radius.
 * @params corners The corners to be rounded up.
 */
- (void)addCornerRadius:(CGFloat)radius forCorners:(UIRectCorner)corners;

/**
 * Adds borders for any object that Inherits from UIView.
 *
 * @params color The color of the border.
 * @params radius The angle of the border.
 * @params width The tickness of the border.
 */
- (void)addBorderWithColor:(UIColor *)color cornerRadius:(CGFloat)radius andWidth:(CGFloat)width;

/**
 * Removes the border for any object that Inherits from UIView.
 */
- (void)removeBorders;

/**
 * Adds a shadow for any object that Inherits from UIView.
 *
 * @params offset The orientation offset of the shadow.
 * @params opacity The opacity of the shadow.
 * @params radius The blur radius of the shadow.
 */
- (void)addShadowWithOffset:(CGSize)offset withOpacity:(CGFloat)opacity andRadius:(CGFloat)radius;

/**
 * Adds a very performant drop shadow for any object that Inherits from UIView.
 *
 * @params offset The orientation offset of the shadow.
 * @params opacity The opacity of the shadow.
 * @params radius The blur radius of the shadow.
 * @params frame The CGRect of the shadow canvas.
 */
- (void)addPathShadowWithOffset:(CGSize)offset opacity:(CGFloat)opacity andRadius:(CGFloat)radius andFrame:(CGRect)frame;

/**
 * Adds a very performant white emboss for any object that Inherits from UIView.
 *
 * @params offset The orientation offset of the shadow.
 * @params opacity The opacity of the shadow.
 * @params radius The blur radius of the shadow.
 * @params frame The CGRect of the shadow canvas.
 */
- (void)addPathEmbossWithOffset:(CGSize)offset opacity:(CGFloat)opacity andRadius:(CGFloat)radius andFrame:(CGRect)frame;

/**
 * Adds a white emboss for any object that Inherits from UIView.
 *
 * @params offset The orientation offset of the shadow.
 * @params opacity The opacity of the shadow.
 */
- (void)addEmbossWithOffset:(CGSize)offset withOpacity:(CGFloat)opacity;

/**
 * Adds a glow effect for any object that Inherits from UIView.
 *
 * @params color The color of the glow.
 * @params opacity The opacity of the glow.
 */
- (void)addGlowEffectWithColor:(UIColor *)color andOpacity:(CGFloat)opacity;

/**
 * Removes the shadow/glow effect for any object that Inherits from UIView.
 */
- (void)removeEffect;

/**
 * Sets the view to be rasterized to the device's scale.
 */
- (void)rasterize;

@end

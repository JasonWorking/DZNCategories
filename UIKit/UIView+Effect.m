//
//  UIView+Effect.m
//
//  Created by Ignacio Romero Zurbuchen on 2/22/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "UIView+Effect.h"

@implementation UIView (Effect)

- (void)addCornerRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
    self.clipsToBounds = YES;
    self.layer.masksToBounds = YES;
    
    [self rasterize];
}

- (void)addCornerRadius:(CGFloat)radius forCorners:(UIRectCorner)corners
{
    CALayer *layer = self.layer;
    [layer setShouldRasterize:YES];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:layer.bounds
                                                     byRoundingCorners:corners
                                                           cornerRadii:CGSizeMake(4.0, 4.0)];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = layer.bounds;
    shapeLayer.path = bezierPath.CGPath;
    [self.layer setMask:shapeLayer];
    [self rasterize];
}

- (void)addBorderWithColor:(UIColor *)color cornerRadius:(CGFloat)radius andWidth:(CGFloat)width;
{
    self.layer.borderWidth = width;
    self.layer.cornerRadius = radius;
    self.layer.edgeAntialiasingMask = kCALayerLeftEdge | kCALayerRightEdge | kCALayerBottomEdge | kCALayerTopEdge;
    self.clipsToBounds = YES;
    self.layer.masksToBounds = YES;
    
    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
    CGColorRef cgColor = [color CGColor];
    self.layer.borderColor = cgColor;
    CGColorSpaceRelease(space);
    
    [self rasterize];
}

- (void)removeBorders
{
    self.layer.borderWidth = 0;
    self.layer.cornerRadius = 0;
    self.layer.borderColor = nil;
}

- (void)addPathShadowWithOffset:(CGSize)offset opacity:(CGFloat)opacity andRadius:(CGFloat)radius andFrame:(CGRect)frame
{
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = radius;
    self.layer.masksToBounds = NO;
    
    CGPathRef path = [[UIBezierPath bezierPathWithRoundedRect:frame cornerRadius:self.layer.cornerRadius] CGPath];
    self.layer.shadowPath = path;
    
    [self rasterize];
}

- (void)addPathEmbossWithOffset:(CGSize)offset opacity:(CGFloat)opacity andRadius:(CGFloat)radius andFrame:(CGRect)frame
{
    [self addPathShadowWithOffset:offset opacity:opacity andRadius:radius andFrame:frame];
    self.layer.shadowColor = [UIColor whiteColor].CGColor;
    
    [self rasterize];
}

- (void)addShadowWithOffset:(CGSize)offset withOpacity:(CGFloat)opacity andRadius:(CGFloat)radius
{
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = radius;
    self.layer.masksToBounds = NO;
    
    [self rasterize];
}

- (void)addEmbossWithOffset:(CGSize)offset withOpacity:(CGFloat)opacity
{
    self.layer.shadowColor = [UIColor whiteColor].CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = 0;
    self.layer.masksToBounds = NO;
    
    [self rasterize];
}

- (void)addGlowEffectWithColor:(UIColor *)color andOpacity:(CGFloat)opacity
{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowRadius = 6.0;
    self.layer.masksToBounds = NO;
    
    [self rasterize];
}

- (void)removeEffect
{
    [self.layer setShadowColor: [[UIColor clearColor] CGColor]];
    [self.layer setShadowOpacity: 0.0f];
    [self.layer setShadowOffset: CGSizeMake(0.0f, 0.0f)];
}

- (void)rasterize
{
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
}

@end

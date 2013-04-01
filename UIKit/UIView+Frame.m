//
//  UIView+Frame.m
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)setFrameSize:(CGSize)newSize
{
    CGRect f = self.frame;
    f.size = newSize;
    self.frame = f;
}

- (void)setFrameWidth:(CGFloat)newWidth {
    CGRect f = self.frame;
    f.size.width = newWidth;
    self.frame = f;
}

- (void)setFrameHeight:(CGFloat)newHeight {
    CGRect f = self.frame;
    f.size.height = newHeight;
    self.frame = f;
}

- (void)setFrameOrigin:(CGPoint)newOrigin
{
    CGRect f = self.frame;
    f.origin = newOrigin;
    self.frame = f;
}

- (void)setFrameOriginX:(CGFloat)newX {
    CGRect f = self.frame;
    f.origin.x = newX;
    self.frame = f;
}

- (void)setFrameOriginY:(CGFloat)newY {
    CGRect f = self.frame;
    f.origin.y = newY;
    self.frame = f;
}

- (void)addWidth:(CGFloat)newWidth {
    CGRect f = self.frame;
    f.size.width += newWidth;
    self.frame = f;
}

- (void)addHeight:(CGFloat)newHeight {
    CGRect f = self.frame;
    f.size.height += newHeight;
    self.frame = f;
}

- (void)addOriginX:(CGFloat)newX {
    CGRect f = self.frame;
    f.origin.x += newX;
    self.frame = f;
}

- (void)addOriginY:(CGFloat)newY {
    CGRect f = self.frame;
    f.origin.y += newY;
    self.frame = f;
}

- (void)addSizeWidth:(CGFloat)newWidth {
    CGRect f = self.frame;
    f.size.width += newWidth;
    self.frame = f;
}

- (void)addSizeHeight:(CGFloat)newHeight {
    CGRect f = self.frame;
    f.size.height += newHeight;
    self.frame = f;
}

@end

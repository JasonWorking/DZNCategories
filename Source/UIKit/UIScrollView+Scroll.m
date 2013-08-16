//
//  UIScrollView+Scroll.m
//  ADedo
//
//  Created by Ignacio on 4/20/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "UIScrollView+Scroll.h"

@implementation UIScrollView (Scroll)

- (void)scrollToTopAnimated:(BOOL)animated
{
    CGPoint topOffset = CGPointZero;
    [self setContentOffset:topOffset animated:animated];
}

- (void)scrollToBottomAnimated:(BOOL)animated
{
    CGPoint bottomOffset = CGPointMake(0, self.contentSize.height - self.bounds.size.height);
    [self setContentOffset:bottomOffset animated:animated];
}

- (BOOL)isOnTop
{
    return (self.contentOffset.y >= 0 && self.contentOffset.y < 100) ? YES : NO;
}

@end

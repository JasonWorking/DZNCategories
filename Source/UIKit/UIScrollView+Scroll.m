//
//  UIScrollView+Scroll.m
//
//  Created by Ignacio Romero Zurbuchen on 4/20/13.
//  Copyright (c) 2013 DZN Labs.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
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
    if ([self canScrollToBottom]) {
        CGPoint bottomOffset = CGPointMake(0, self.contentSize.height - self.bounds.size.height);
        [self setContentOffset:bottomOffset animated:animated];
    }
}

- (BOOL)canScrollToBottom
{
    return (self.contentSize.height > self.bounds.size.height) ? YES : NO;
}

- (BOOL)isOnTop
{
    return (self.contentOffset.y >= 0 && self.contentOffset.y < 100) ? YES : NO;
}

- (BOOL)isOnBottom
{
    CGPoint bottomOffset = CGPointMake(0, self.contentSize.height - self.bounds.size.height);
    return (self.contentOffset.y == bottomOffset.y) ? YES : NO;
}

@end

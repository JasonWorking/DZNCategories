//
//  UIScrollView+Scroll.h
//  ADedo
//
//  Created by Ignacio on 4/20/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Scroll)

- (void)scrollToTopAnimated:(BOOL)animated;

- (void)scrollToBottomAnimated:(BOOL)animated;

- (BOOL)isOnTop;

- (BOOL)isOnBottom;

@end

//
//  UIScrollView+Scroll.h
//
//  Created by Ignacio Romero Zurbuchen on 4/20/13.
//  Copyright (c) 2013 DZN Labs.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Scroll)

- (void)scrollToTopAnimated:(BOOL)animated;

- (void)scrollToBottomAnimated:(BOOL)animated;

- (BOOL)isOnTop;

- (BOOL)isOnBottom;

@end

//
//  UITableView+Scroll.h
//  EpicList
//
//  Created by Ignacio on 11/26/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Scroll)

- (void)scrollToTopAnimated:(BOOL)animated;

- (void)scrollToBottomAnimated:(BOOL)animated;

@end

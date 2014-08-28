//
//  UITableView+Scroll.h
//  DZNCategories
//
//  Created by Ignacio Romero Zurbuchen on 11/26/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <UIKit/UIKit.h>

@interface UITableView (Scroll)

- (void)scrollTableToTopAnimated:(BOOL)animated;

- (void)scrollTableToBottomAnimated:(BOOL)animated;

- (NSIndexPath *)firstIndexPath;

- (NSIndexPath *)lastIndexPath;

@end

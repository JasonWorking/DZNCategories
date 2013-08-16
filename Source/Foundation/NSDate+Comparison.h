//
//  NSDate+Comparison.h
//  Connectae
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * Useful methods for comparing dates.
 */
@interface NSDate (Comparison)

/**
 *
 */
- (BOOL)isToday;

/**
 *
 */
- (BOOL)isYesterday;

/**
 *
 */
- (BOOL)isFirstDayOfMonth;

@end

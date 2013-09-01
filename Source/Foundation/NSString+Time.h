//
//  NSString+Time.h
//  Connectae
//
//  Created by Ignacio on 8/17/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Time)

+ (NSString *)elapsedTime:(NSTimeInterval)time;

+ (NSString *)yesterday;

+ (NSString *)today;

+ (NSString *)tomorrow;

@end

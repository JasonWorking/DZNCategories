//
//  NSObject+KVC.m
//  EpicList
//
//  Created by Ignacio on 9/17/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "NSObject+KVC.h"
#import <objc/runtime.h>

@implementation NSObject (KVC)

- (NSArray *)allKeys
{
    NSMutableArray *keys = [NSMutableArray new];
    
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([UITouch class], &outCount);
    for(i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        
        NSString *key = [NSString stringWithFormat:@"%s %s\n", property_getName(property), property_getAttributes(property)];
        [keys addObject:key];
    }
    free(properties);
    
    return keys;
}

@end

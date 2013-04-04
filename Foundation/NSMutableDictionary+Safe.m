//
//  NSMutableDictionary+Safe.m
//
//  Created by Ignacio Romero Zurbuchen on 2/8/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "NSMutableDictionary+Safe.h"

@implementation NSMutableDictionary (Safe)

- (void)setSafeObject:(id)anObject forKey:(id <NSCopying>)aKey
{
    if (!anObject) [self setObject:[NSNull new] forKey:aKey];
    else [self setObject:anObject forKey:aKey];
}

@end

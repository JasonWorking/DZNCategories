//
//  NSUserDefaults+Custom.m
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "NSUserDefaults+Custom.h"

@implementation NSUserDefaults (Custom)

- (void)setCustomObject:(id)anObject forKey:(NSString *)aKey
{
    NSData *anObjectData = [NSKeyedArchiver archivedDataWithRootObject:anObject];
    [[NSUserDefaults standardUserDefaults] setObject:anObjectData forKey:aKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id)customObjectForKey:(NSString *)aKey
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *anObjectData = [defaults objectForKey:aKey];
    return [NSKeyedUnarchiver unarchiveObjectWithData:anObjectData];
}

@end

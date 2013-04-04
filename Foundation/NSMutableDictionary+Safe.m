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

- (void)saveArrayToFile:(NSString *)filename;
{
    NSString *path = [NSString getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@.plist",filename]];
    NSLog(@"saveArrayToFile : %@",path);
    [NSKeyedArchiver archiveRootObject:self toFile:path];
}

+ (NSMutableArray *)loadArrayfromFile:(NSString *)fileName
{
    NSString *path = [NSString getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@.plist",fileName]];
    NSLog(@"loadArrayfromFile : %@",path);
    return [NSKeyedUnarchiver unarchiveObjectWithFile:path];
}

@end

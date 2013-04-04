//
//  NSMutableArray+Save.m
//  ADedo
//
//  Created by Ignacio on 4/4/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "NSMutableArray+Save.h"
#import "NSString+Path.h"

@implementation NSMutableArray (Save)

- (void)saveArrayToFile:(NSString *)filename
{
    NSString *path = [NSString getLibraryDirectoryPathForFile:[NSString stringWithFormat:@"%@.plist",filename]];
    NSLog(@"saveArrayToFile : %@",path);
    [NSKeyedArchiver archiveRootObject:self toFile:path];
}

+ (NSMutableArray *)loadArrayfromFile:(NSString *)fileName
{
    NSString *path = [NSString getLibraryDirectoryPathForFile:[NSString stringWithFormat:@"%@.plist",fileName]];
    NSLog(@"loadArrayfromFile : %@",path);
    return [NSKeyedUnarchiver unarchiveObjectWithFile:path];
}

@end

//
//  NSString+Safe.m
//  EpicList
//
//  Created by Ignacio on 12/5/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "NSString+Safe.h"

@implementation NSString (Safe)

- (NSString *)safeStringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
{
    if (target != nil && replacement != nil) {
        return [self stringByReplacingOccurrencesOfString:target withString:replacement];
    }
    else {
        return nil;
    }
}

@end

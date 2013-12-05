//
//  NSString+Safe.h
//  EpicList
//
//  Created by Ignacio on 12/5/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Safe)

- (NSString *)safeStringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement;

@end

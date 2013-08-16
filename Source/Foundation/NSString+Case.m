//
//  NSString+Case.m
//
//  Created by Ignacio on 4/4/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSString+Case.h"

@implementation NSString (Case)

- (NSString *)capitalizedSentence
{
    return [self stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[self substringToIndex:1] capitalizedString]];
}

@end

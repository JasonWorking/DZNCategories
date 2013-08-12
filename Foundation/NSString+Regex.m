//
//  NSString+Regex.m
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSString+Regex.h"
#include <sys/utsname.h>

@implementation NSString (Regex)

- (BOOL)isValidEmail
{
    NSString *regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    
    return [emailTest evaluateWithObject:self];
}

- (BOOL)isNumeric
{
    NSCharacterSet *alphaNumbersSet = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet *stringSet = [NSCharacterSet characterSetWithCharactersInString:self];
    return [alphaNumbersSet isSupersetOfSet:stringSet];
}

- (BOOL)isValidUrl
{
    NSString *regex = @"(http|https):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&amp;:/~\\+#]*[\\w\\-\\@?^=%&amp;/~\\+#])?";
    return ([self rangeOfString:regex options:NSRegularExpressionSearch].location != NSNotFound);
}

#warning Incomplete Implementation
- (BOOL)isBackSpace
{
    return NO;
}

@end

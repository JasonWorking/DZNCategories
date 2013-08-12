//
//  NSString+Regex.h
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <Foundation/Foundation.h>

/*
 * Useful regular expression methods for NSString.
 */
@interface NSString (Regex)

/*
 * Checks if the string is a valid email.
 *
 * @returns YES if the string is a valid email.
 */
- (BOOL)isValidEmail;

/*
 * Checks if the string is numeric.
 *
 * @returns YES if the string is numeric.
 */
- (BOOL)isNumeric;

/*
 * Checks if the string is a valid URL.
 *
 * @returns YES if the string is a valid URL.
 */
- (BOOL)isValidUrl;

/*
 *
 */
- (BOOL)isBackSpace;

@end

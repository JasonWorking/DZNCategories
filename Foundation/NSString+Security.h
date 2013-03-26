//
//  NSString+Security.h
//
//  Created by Ignacio Romero Zurbuchen on 3/14/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <Foundation/Foundation.h>

/**
 * @brief Security concerned methods.
 */
@interface NSString (Security)

/**
 * Returns a unified string based on the returned device token by Apple.
 * @returns A string from the device token.
 */
+ (NSString *)stringWithDeviceToken:(NSData *)deviceToken;

/**
 * Returns the device unique device identifier (a.k.a UDID)
 * @returns The UDID.
 */
+ (NSString *)uniqueDeviceIdentifier;

/**
 * Returns the local MAC address (a.k.a HWID).
 * @returns The HWID.
 */
+ (NSString *)uniqueGlobalDeviceIdentifier;

/**
 * Decodes and returns and MD5 encoded string.
 * @returns An MD5 decoded string.
 */
+ (NSString *)stringFromMD5:(NSString *)val;

@end

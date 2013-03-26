//
//  NSUserDefaults+Custom.h
//
//  Created by Ignacio Romero Zurbuchen on 10/28/11.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <Foundation/Foundation.h>

/**
 * @brief A category class for serializing and deserializing custom objects.
 */
@interface NSUserDefaults (Custom)

/** Adds a given custom object key-value pair to the NSUserDefaults.
 *
 * @params anObject The custm object value.
 * @params aKey The key for value.
 */
- (void)setCustomObject:(id)anObject forKey:(NSString *)aKey;

/** Returns a custom object value associated with a given key from the NSUserDefaults.
 *
 * @params aKey The key for which to return the corresponding value.
 * @returns The value associated with aKey.
 */
- (id)customObjectForKey:(NSString *)aKey;

@end

//
//  NSMutableDictionary+Safe.h
//
//  Created by Ignacio Romero Zurbuchen on 2/8/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <Foundation/Foundation.h>

/**
 * @brief Safe methods for saving and retrieving data from a NSMutableDictionary.
 */
@interface NSMutableDictionary (Safe)

/** Adds a given safe key-value pair to the dictionary.
 *
 * @params anObject The none-nil value for aKey. A strong reference to the object is maintained by the dictionary. Raises an NSInvalidArgumentException if anObject is nil. If the value is nil value, sets automatically a NSNull reference instead.
 * @params aKey The key for value. The key is copied (using copyWithZone:; keys must conform to the NSCopying protocol). Raises an NSInvalidArgumentException if aKey is nil. If aKey already exists in the dictionary anObject takes its place.
 */
- (void)setSafeObject:(id)anObject forKey:(id <NSCopying>)aKey;

@end

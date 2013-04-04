//
//  NSArray+Query.h
//  ADedo
//
//  Created by Ignacio on 3/25/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * @brief Useful methods to ease NSArray queries.
 */
@interface NSArray (Query)

/** Returns the object in the array at the first index value.
 *
 * @returns The first object in the array.
 */
- (id)firstObject;


/** Returns the lastest object's index in the array.
 *
 * @returns The last object's index in the array.
 */
- (NSUInteger)lastObjectIndex;


/** Returns a reversed array.
 *
 * @returns A reversed array.
 */
- (NSArray *)reversedArray;

@end

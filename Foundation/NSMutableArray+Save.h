//
//  NSMutableArray+Save.h
//  ADedo
//
//  Created by Ignacio on 4/4/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * @brief Straigh-forward methods for saving array filled with primite objects and/or custom objects.
 */
@interface NSMutableArray (Save)

/** Serializes and saves locally an array containing primitive and/or custom objects into a coded plist file.
 * For custom objects, be sure to implement NSCoding protocol.
 *
 * @params filename The plist file name to be saved on.
 */
- (void)saveArrayToFile:(NSString *)filename;

/** Deserializes and returns an array containing the previously saved objects.
 *
 * @params fileName The plist file name to be saved on.
 * @return A mutable array with the serialized objects ready to be used.
 */
+ (NSMutableArray *)loadArrayfromFile:(NSString *)fileName;

@end

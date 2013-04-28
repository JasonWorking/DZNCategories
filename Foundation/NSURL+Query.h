//
//  NSURL+Query.h
//
//  Created by Ignacio Romero Zurbuchen on 4/19/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <Foundation/Foundation.h>

/*
 * Useful methods to ease NSArray queries.
 */
@interface NSURL (Query)

/* Returns
 *
 * @returns
 */
- (BOOL)hasScheme;

/* Returns
 *
 * @returns
 */
- (NSString *)verb;

/* Returns
 *
 * @returns
 */
- (NSDictionary *)parametersString;

@end

//
//  CGGeometry+Size.h
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2013 DZN Labs.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <CoreGraphics/CoreGraphics.h>

/* Returns a scaled CGSize.
 *
 * @param size The size to be scaled.
 * @param scale The scale factor.
 * @return The new scaled CGSize.
 */
CGSize CGSizeScale(CGSize size, CGFloat scale);

/* Returns a squared CGSize.
 *
 * @param square The square size to be applied to the width and height.
 * @return The new squared CGSize.
 */
CGSize CGSizeSquare(CGFloat square);


/* Returns a new CGSize based on two CGPoints
 *
 * @param point1 The first point.
 * @param point2 The seconds point.
 * @return The new generated CGSize.
 */
CGSize CGSizeFromTwoPoints(CGPoint point1, CGPoint point2);

/* Return true if `size' is empty (that is, if it has zero width and height).
 * Return false otherwise. A null size is defined to be empty.
 */
bool CGSizeIsEmpty(CGSize size);
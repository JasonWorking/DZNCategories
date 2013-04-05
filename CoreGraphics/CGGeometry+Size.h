//
//  CGGeometry+Size.h
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <CoreGraphics/CoreGraphics.h>

/** Returns a scaled CGSize.
 *
 * @param size The size to be scaled.
 * @param scale The scale factor.
 * @return The new sclaed CGSize.
 */
CGSize CGSizeScale(CGSize size, CGFloat scale);

/** Returns a squared CGSize.
 *
 * @param square The square size to be applied to the width and height.
 * @return The new squared CGSize.
 */
CGSize CGSizeSquare(CGFloat square);

/** Return true if `size' is empty (that is, if it has zero width and height).
 * Return false otherwise. A null size is defined to be empty.
 */
bool CGSizeIsEmpty(CGSize size);
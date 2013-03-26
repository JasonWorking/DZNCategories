//
//  CGGeometry+Size.h
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <CoreGraphics/CoreGraphics.h>

/**
 *
 */
CGSize CGSizeScale(CGSize size, CGFloat scale);

/**
 * Return true if `size' is empty (that is, if it has zero width and height).
 * Return false otherwise. A null size is defined to be empty.
 */
bool CGSizeIsEmpty(CGSize size);
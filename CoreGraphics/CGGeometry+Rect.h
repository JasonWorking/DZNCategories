//
//  CGGeometry+Rect.h
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <CoreGraphics/CoreGraphics.h>

/**
 * Returns a rectangle with none null width and height based on he provided CGSize, and empty origin.
 */
CGRect CGRectWithSize(CGSize size);

/**
 * Returns a rectangle with none null width and height, and empty origin.
 */
CGRect CGRectSizeMake(CGFloat width, CGFloat height);

/**
 * 
 */
CGRect CGRectPointMake(CGFloat x, CGFloat y);

/**
 * 
 */
CGRect CGRectInvert(CGRect containingRect, CGRect rect);
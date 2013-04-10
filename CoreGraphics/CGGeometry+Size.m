//
//  CGGeometry+Size.m
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "CGGeometry+Size.h"

CGSize CGSizeScale(CGSize size, CGFloat scale)
{
	return CGSizeMake(size.width * scale, size.height * scale);
}

CGSize CGSizeSquare(CGFloat square)
{
	return CGSizeMake(square, square);
}

bool CGSizeIsEmpty(CGSize size)
{
    return (size.width == 0 && size.height == 0) ? true : false;
}
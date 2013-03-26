//
//  CGGeometry+Size.m
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "CGGeometry+Size.h"

CGSize CGSizeScale(CGSize size, CGFloat scale)
{
	return CGSizeMake(size.width * scale, size.height * scale);
}

bool CGSizeIsEmpty(CGSize size)
{
    return (size.width == 0 && size.height == 0) ? true : false;
}
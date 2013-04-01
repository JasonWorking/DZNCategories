//
//  CGGeometry+UIEdgeInsets.m
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import "CGGeometry+UIEdgeInsets.h"

bool UIEdgeInsetsIsEmpty(UIEdgeInsets edgeInsets)
{
    return (edgeInsets.top == 0 && edgeInsets.bottom == 0 &&
            edgeInsets.right == 0 && edgeInsets.left == 0) ? true : false;
}

UIEdgeInsets UIEdgeInsetsSquare(CGFloat inset) {
    return UIEdgeInsetsMake(inset, inset, inset, inset);
}
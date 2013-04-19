//
//  CLLocation+Coordinate.m
//  GeoFeed
//
//  Created by Ignacio on 4/18/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "CLLocation+Coordinate.h"

@implementation CLLocation (Coordinate)

bool CLLocationCoordinateIsEmpty(CLLocationCoordinate2D coord)
{
    return (coord.latitude == 0 && coord.longitude == 0) ? true : false;
}

@end

//
//  CLLocation+Coordinate.h
//  GeoFeed
//
//  Created by Ignacio on 4/18/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface CLLocation (Coordinate)

/*
 * Return true if 'coord' is empty (that is, if it has zero values for latitude and longitude),
 * Return false otherwise. A null coordinate is defined to be empty.
 */
bool CLLocationCoordinateIsEmpty(CLLocationCoordinate2D coord);

@end

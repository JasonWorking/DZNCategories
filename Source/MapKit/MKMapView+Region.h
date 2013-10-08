//
//  MKMapView+Region.h
//  ADedo
//
//  Created by Ignacio Romero Zurbuchen on 3/15/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import <MapKit/MapKit.h>

/*
 * @brief
 */
@interface MKMapView (Region)

/*
 */
- (MKCoordinateRegion)regionFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination withTolerance:(CGFloat)tolerance;

/*
 */
- (MKCoordinateRegion)regionFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination;

/*
 */
- (MKCoordinateRegion)regionFromUserLocation;

/*
 */
- (MKCoordinateRegion)regionFromLocation:(CLLocationCoordinate2D)coordinate;

/*
 */
- (BOOL)isValidRegion:(MKCoordinateRegion)region;

@end

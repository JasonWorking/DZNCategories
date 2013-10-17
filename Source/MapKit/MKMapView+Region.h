//
//  MKMapView+Region.h
//
//  Created by Ignacio Romero Zurbuchen on 4/18/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <MapKit/MapKit.h>

@interface MKMapView (Region)

/*
 *
 */
- (MKCoordinateRegion)regionFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination withTolerance:(CGFloat)tolerance;

/*
 *
 */
- (MKCoordinateRegion)regionFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination;

/*
 *
 */
- (MKCoordinateRegion)regionFromUserLocation;

/*
 *
 */
- (MKCoordinateRegion)regionFromLocation:(CLLocationCoordinate2D)coordinate;

/*
 *
 */
- (BOOL)isValidRegion:(MKCoordinateRegion)region;

@end

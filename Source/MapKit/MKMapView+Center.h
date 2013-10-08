//
//  MKMapView+Center.h
//  ADedo
//
//  Created by Ignacio Romero Zurbuchen on 3/15/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import <MapKit/MapKit.h>

/**
 */
@interface MKMapView (Center)

/**
 */
- (void)centerMapFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination animated:(BOOL)animated;

/**
 */
- (void)centerMapToUserLocationAnimated:(BOOL)animated;

@end

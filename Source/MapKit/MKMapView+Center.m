//
//  MKMapView+Center.m
//  ADedo
//
//  Created by Ignacio Romero Zurbuchen on 3/15/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import "MKMapView+Center.h"
#import "MKMapView+Region.h"

@implementation MKMapView (Center)

- (void)centerMapFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination animated:(BOOL)animated;
{
    [self setRegion:[self regionFromOrigin:origin toDestination:destination] animated:animated];
}

- (void)centerMapToUserLocationAnimated:(BOOL)animated
{
    [self setRegion:[self regionFromUserLocation] animated:animated];
}

@end

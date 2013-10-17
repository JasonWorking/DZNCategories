//
//  MKMapView+Region.m
//
//  Created by Ignacio Romero Zurbuchen on 4/18/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "MKMapView+Region.h"

@implementation MKMapView (Region)

- (MKCoordinateRegion)regionFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination withTolerance:(CGFloat)tolerance
{
    CLLocationCoordinate2D _origin = origin;
    CLLocationCoordinate2D _destination = destination;
    
    _destination.latitude = MAX(_destination.latitude, destination.latitude);
    _destination.longitude = MAX(_destination.longitude, destination.longitude);
    
    _origin.latitude = MIN(_origin.latitude, origin.latitude);
    _origin.longitude = MIN(_origin.longitude, origin.longitude);
    
    MKCoordinateRegion region;
    region.span.latitudeDelta = fabs(_destination.latitude - _origin.latitude) * tolerance;
    region.span.longitudeDelta = fabs(_origin.longitude - _destination.longitude) * tolerance;
    region.center.latitude = _destination.latitude - (_destination.latitude - _origin.latitude) * 0.5;
    region.center.longitude = _destination.longitude + (_origin.longitude - _destination.longitude) * 0.5;
    
    return [self regionThatFits:region];
}

- (MKCoordinateRegion)regionFromOrigin:(CLLocationCoordinate2D)origin toDestination:(CLLocationCoordinate2D)destination
{
    return [self regionFromOrigin:origin toDestination:destination withTolerance:1.2];
}

- (MKCoordinateRegion)regionFromUserLocation
{
    return [self regionFromLocation:self.userLocation.coordinate];
}

- (MKCoordinateRegion)regionFromLocation:(CLLocationCoordinate2D)coordinate
{
    MKCoordinateRegion region = [self region];
    region.center = coordinate;
    return region;
}

- (MKCoordinateRegion)region
{
    MKCoordinateSpan span;
    span.latitudeDelta = 0.02;
    span.longitudeDelta = 0.02;
    
    MKCoordinateRegion region;
    region.span = span;
    
    return region;
}

- (BOOL)isValidRegion:(MKCoordinateRegion)region
{
    NSLog(@"%s",__FUNCTION__);
    if (region.center.latitude > 90.0f || region.center.latitude < -90.0f ||
        region.center.longitude > 360.0f || region.center.longitude < -180.0f) {
        
        return YES;
    }
    else return NO;
}

@end

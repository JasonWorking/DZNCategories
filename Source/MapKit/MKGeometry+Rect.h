//
//  MKGeometry+Rect.h
//
//  Created by Ignacio Romero Zurbuchen on 4/18/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <MapKit/MapKit.h>

/*
 *
 */
NSString *NSStringFromMKMapRect(MKMapRect rect);

/*
 *
 */
MKMapRect mapRectForCoordinateRegion(MKCoordinateRegion coordinate);

/*
 *
 */
NSString *NSStringFromMKCoordinateRegion(MKCoordinateRegion region);

/*
 *
 */
NSString *NSStringFromMKCoordinateSpan(MKCoordinateSpan span);
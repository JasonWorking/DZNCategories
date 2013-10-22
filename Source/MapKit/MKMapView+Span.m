//
//  MKMapView+Span.m
//  EpicList
//
//  Created by Ignacio on 10/22/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "MKMapView+Span.h"

@implementation MKMapView (Span)

NSString *NSStringFromMKCoordinateSpan(MKCoordinateSpan span)
{
    return [NSString stringWithFormat:@"%f,%f",span.latitudeDelta,span.longitudeDelta];
}

@end

//
//  MKMapSnapshotter+Cache.h
//  EpicList
//
//  Created by Ignacio on 10/22/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import <MapKit/MapKit.h>

typedef void (^MKMapSnapshotCachedCompletionHandler)(UIImage *snapshot, NSError *error);

@interface MKMapSnapshotter (Cache)

- (void)startCacheWithCompletionHandler:(MKMapSnapshotCachedCompletionHandler)completionHandler andOptions:(MKMapSnapshotOptions *)options;

@end

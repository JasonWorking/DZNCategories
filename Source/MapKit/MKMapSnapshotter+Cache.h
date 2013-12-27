//
//  MKMapSnapshotter+Cache.h
//
//  Created by Ignacio Romero Zurbuchen on 11/05/13.
//  Copyright (c) 2013 DZN Labs.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import <MapKit/MapKit.h>

typedef void (^MKMapSnapshotCachedCompletionHandler)(UIImage *snapshot, NSError *error);

@interface MKMapSnapshotter (Cache)

- (void)startCacheWithCompletionHandler:(MKMapSnapshotCachedCompletionHandler)completionHandler andOptions:(MKMapSnapshotOptions *)options;

+ (void)clearCachedImages;

@end

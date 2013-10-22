//
//  MKMapSnapshotter+Cache.m
//  EpicList
//
//  Created by Ignacio on 10/22/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "MKMapSnapshotter+Cache.h"

@implementation MKMapSnapshotter (Cache)

- (void)cacheWithCompletionHandler:(MKMapSnapshotCachedCompletionHandler)completionHandler andOptions:(MKMapSnapshotOptions *)options;
{
    if (CLLocationCoordinate2DIsValid(options.region.center)) {
        
        NSString *center = NSStringFromCLLocationCoordinate(options.region.center);
        NSString *span = NSStringFromMKCoordinateSpan(options.region.span);
        NSString *size = NSStringFromCGSize(options.size);
        MKMapType mapType = options.mapType;
        CGFloat scale = options.scale;
        
        BOOL directory;
        NSError *error = nil;
        
        NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        NSString *cachedImagesDirectory = [cacheDirectory stringByAppendingPathComponent:@"MKCachedImages"];
        if (![[NSFileManager defaultManager] fileExistsAtPath:cachedImagesDirectory isDirectory:&directory]) {
            [[NSFileManager defaultManager] createDirectoryAtPath:cachedImagesDirectory withIntermediateDirectories:NO attributes:nil error:&error];
            if (error) NSLog(@"contentsOfDirectoryAtPath error : %@",error.localizedDescription);
            NSLog(@"cachedImagesDirectory : %@",cachedImagesDirectory);
        }
        
        NSString *name = [NSString stringWithFormat:@"mapsnapshot%d_%@_%@_%@",mapType,size,center,span];
        NSString *path = [cachedImagesDirectory stringByAppendingPathComponent:name];
        if (scale == 2.0) path = [path stringByAppendingString:@"@2x"];
        
        path = [path stringByAppendingString:@".png"];
        
        if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
            [self startWithCompletionHandler:^(MKMapSnapshot *snapshot, NSError *error) {
                
                if (!error) {
                    [UIImagePNGRepresentation(snapshot.image) writeToFile:path atomically:YES];
                    NSLog(@"%s saved at path : %@",__FUNCTION__, path);
                }
                completionHandler(snapshot.image,error);
            }];
        }
        else {
            NSData *data = [NSData dataWithContentsOfFile:path];
            completionHandler([UIImage imageWithData:data scale:scale],nil);
        }
    }
}

@end

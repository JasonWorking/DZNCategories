//
//  DZAppDelegate.m
//  Sample
//
//  Created by Ignacio on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "DZAppDelegate.h"

@implementation DZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

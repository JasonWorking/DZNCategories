//
//  DZAppDelegate.m
//  Sample
//
//  Created by Ignacio Romero Zurbuchen on 8/15/13.
//  Copyright (c) 2013 DZen Interaktiv. All rights reserved.
//

#import "DZAppDelegate.h"
#import "UIView+Frame.h"

@implementation DZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    NSLog(@"view.frame : %@", NSStringFromCGRect(view.frame));
    
    NSLog(@"x : %f", view.x);
    NSLog(@"y : %f", view.y);
    NSLog(@"width : %f", view.width);
    NSLog(@"height : %f", view.height);
    
    view.x = 5.0;
    view.y = 12.0;
    view.width = 20;
    view.height = 80;
    
    NSLog(@"view.frame : %@", NSStringFromCGRect(view.frame));
    
    [view addToX:5.0];
    [view addToY:8.0];
    [view addToWidth:30.0];
    [view addToHeight:20.0];
    
    NSLog(@"view.frame : %@", NSStringFromCGRect(view.frame));
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

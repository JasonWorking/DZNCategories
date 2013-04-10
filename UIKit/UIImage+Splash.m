//
//  UIImage+Frame.h
//
//  Created by Ignacio Romero Zurbuchen on 4/7/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "UIImage+Splash.h"

@implementation UIImage (Splash)

+ (UIImage *)splashImage
{
    return [UIImage splashImageForInterfaceOrientation:[UIApplication sharedApplication].statusBarOrientation];
}

+ (UIImage *)splashImageForInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        if (orientation == UIInterfaceOrientationPortrait ||
            orientation == UIInterfaceOrientationPortraitUpsideDown) {
            return [UIImage imageNamed:@"Default-Portrait"];
        }
        else return [UIImage imageNamed:@"Default-Landscape"];
    }
    else {
        if ([[UIScreen mainScreen] bounds].size.height == 568.0f) return [UIImage imageNamed:@"Default-568h"];
        else return [UIImage imageNamed:@"Default"];
    }
}

@end

//
//  UIFont+System.m
//  EpicList
//
//  Created by Ignacio on 9/24/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "UIFont+System.h"
#import <CoreText/CoreText.h>

@implementation UIFont (System)

+ (UIFont *)boldItalicSystemFontOfSize:(CGFloat)size {

    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        return [UIFont fontWithName:@"HelveticaNeue-BoldItalic" size:size];
    }
    else {
        return [UIFont fontWithName:@"Helvetica-BoldOblique" size:size];
    }
}

+ (UIFont *)mediumSystemFontOfSize:(CGFloat)size {
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        return [UIFont fontWithName:@"HelveticaNeue-Medium" size:size];
    }
    else {
        return nil;
    }
}

+ (UIFont *)lightSystemFontOfSize:(CGFloat)size {
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        return [UIFont fontWithName:@"HelveticaNeue-Light" size:size];
    }
    else {
        return [UIFont fontWithName:@"Helvetica-Light" size:size];
    }
}

+ (UIFont *)lightItalicSystemFontOfSize:(CGFloat)size {
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        return [UIFont fontWithName:@"HelveticaNeue-LightItalic" size:size];
    }
    else {
        return [UIFont fontWithName:@"Helvetica-LightOblique" size:size];
    }
}

+ (UIFont *)ultraLightSystemFontOfSize:(CGFloat)size {
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        return [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:size];
    }
    else {
        return nil;
    }
}

@end

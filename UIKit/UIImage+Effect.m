//
//  UIImage+Effect.m
//
//  Created by Ignacio Romero Zurbuchen on 4/7/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "UIImage+Effect.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImage (Effect)

- (UIImage *)imageWithMask:(UIImage *)maskImg
{
    //// Draws the masked over the background colored image.
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    CGContextRef newcontext = UIGraphicsGetCurrentContext();
	CGColorSpaceRef colorSpace;
	colorSpace = CGColorSpaceCreateDeviceRGB();
	newcontext = CGBitmapContextCreate(NULL, self.size.width, self.size.height, 8, 0, colorSpace, kCGImageAlphaPremultipliedLast);
	CGColorSpaceRelease(colorSpace);
	
	if (newcontext == NULL) return nil;
	
	CGContextClipToMask(newcontext, CGRectMake(0, 0, self.size.width, self.size.height), maskImg.CGImage);
	CGContextDrawImage(newcontext, CGRectMake(0, 0, self.size.width, self.size.height), self.CGImage);
	CGImageRef mainViewContentBitmapContext = CGBitmapContextCreateImage(newcontext);
	CGContextRelease(newcontext);
	UIImage *maskedImg = [UIImage imageWithCGImage:mainViewContentBitmapContext];
	CGImageRelease(mainViewContentBitmapContext);
    
    UIGraphicsEndImageContext();
    
	return maskedImg;
}

+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size
{
    //// Draws the background colored image.
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width*[NSObject density], size.height*[NSObject density]);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(rect.size.width, rect.size.height), NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)imageToGrayscale
{
    // Create a graphic context.
    UIGraphicsBeginImageContextWithOptions(self.size,YES,0.0);
    CGRect imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    // Draw the image with the luminosity blend mode.
    // On top of a white background, this will give a black and white image.
    [self drawInRect:imageRect blendMode:kCGBlendModeLuminosity alpha:1.0];
    
    // Get the resulting image.
    UIImage *filteredImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return filteredImage;
}

@end

//
//  UIImage+Effect.m
//
//  Created by Ignacio Romero Zurbuchen on 4/7/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "UIImage+Effect.h"
#import "UIColor+Hex.h"
#import "NSObject+System.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImage (Effect)

- (UIImage *)imageWithMask:(UIImage *)maskImg
{
    //// Draws the masked over the background colored image.
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);

	CGColorSpaceRef colorSpace;
	colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef context = CGBitmapContextCreate(NULL, self.size.width, self.size.height, 8, 0, colorSpace, kCGImageAlphaPremultipliedLast);
    CGContextSetAllowsAntialiasing(context, true);
    CGContextSetShouldAntialias(context, true);
	CGColorSpaceRelease(colorSpace);
	
	if (context == NULL) return nil;
	
	CGContextClipToMask(context, CGRectMake(0, 0, self.size.width, self.size.height), maskImg.CGImage);
	CGContextDrawImage(context, CGRectMake(0, 0, self.size.width, self.size.height), self.CGImage);
	CGImageRef mainViewContentBitmapContext = CGBitmapContextCreateImage(context);
	CGContextRelease(context);
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

+ (UIImage *)imageNamed:(NSString *)name andColored:(UIColor *)color
{
    CGFloat scale = [UIScreen mainScreen].scale;
    
    NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *hex = [color hexFromColor];
    NSString *path = [cacheDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@_%@",name,hex]];
    if (scale == 2.0) path = [path stringByAppendingString:@"@2x"];
    
    path = [path stringByAppendingString:@".png"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UIImage *image = [[UIImage imageNamed:name] coloredImage:color];
        [UIImagePNGRepresentation(image) writeToFile:path atomically:YES];
    }
        
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [UIImage imageWithData:data scale:scale];
}

- (UIImage *)coloredImage:(UIColor *)color
{
    CGSize size = CGSizeMake(self.size.width, self.size.height);
    UIImage *colorImg = [UIImage imageWithColor:color andSize:size];
    return [colorImg imageWithMask:self];
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

- (UIImage *)circular
{
    return [self circularWithBorderColor:nil andBorderWidth:0];
}

- (UIImage *)circularWithBorderColor:(UIColor *)color andBorderWidth:(CGFloat)width
{
    // Begin a new image that will be the new image with the rounded corners
    // (here with the size of an UIImageView)
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    // Add a clip before drawing anything, in the shape of an rounded rect
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:rect];
    [bezierPath addClip];
    
    // Draw your image
    [self drawInRect:rect];
    
    if (color && width > 0) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetShouldAntialias(context, YES);

        CGContextSetStrokeColorWithColor(context,color.CGColor);
        
        CGPathRef path = [bezierPath CGPath];
        CGContextAddPath(context, path);
        
        CGContextSetLineWidth(context, width);
        CGContextStrokeEllipseInRect(context, rect);
    }
    
    // Get the image, here setting the UIImageView image
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    // Lets forget about that we were drawing
    UIGraphicsEndImageContext();
    
    return result;
}

@end

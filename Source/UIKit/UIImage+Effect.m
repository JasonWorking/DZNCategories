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
#import "CGGeometry+Size.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImage (Effect)

- (UIImage *)imageWithMask:(UIImage *)maskImg
{
    CGSize size = self.size;
    
//    NSLog(@"self.size : %@", NSStringFromCGSize(self.size));
    
    //// Draws the masked over the background colored image.
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);

	CGColorSpaceRef colorSpace;
	colorSpace = CGColorSpaceCreateDeviceRGB();
    
	CGContextRef context = CGBitmapContextCreate(NULL, size.width, size.height, 8, 0, colorSpace, kCGImageAlphaPremultipliedLast);
    CGContextSetAllowsAntialiasing(context, true);
    CGContextSetShouldAntialias(context, true);
	CGColorSpaceRelease(colorSpace);
	
	if (context == NULL) return nil;

	CGContextClipToMask(context, CGRectMake(0, 0, size.width, size.height), maskImg.CGImage);
	CGContextDrawImage(context, CGRectMake(0, 0, size.width, size.height), self.CGImage);
	CGImageRef mainViewContentBitmapContext = CGBitmapContextCreateImage(context);
	CGContextRelease(context);
	UIImage *maskedImg = [UIImage imageWithCGImage:mainViewContentBitmapContext scale:self.scale orientation:(self.imageOrientation)];
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
    BOOL directory;
    NSError *error = nil;
    CGFloat scale = [UIScreen mainScreen].scale;
    
    NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *cachedImagesDirectory = [cacheDirectory stringByAppendingPathComponent:@"UICachedImages"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:cachedImagesDirectory isDirectory:&directory]) {
        [[NSFileManager defaultManager] createDirectoryAtPath:cachedImagesDirectory withIntermediateDirectories:NO attributes:nil error:&error];
        if (error) NSLog(@"contentsOfDirectoryAtPath error : %@",error.localizedDescription);
        NSLog(@"cachedImagesDirectory : %@",cachedImagesDirectory);
    }
    
    NSString *hex = [color hexFromColor];
    NSString *path = [cachedImagesDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@_%@",name,hex]];
    if (scale == 2.0) path = [path stringByAppendingString:@"@2x"];
    
    path = [path stringByAppendingString:@".png"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UIImage *image = [[UIImage imageNamed:name] coloredImage:color];
        [UIImagePNGRepresentation(image) writeToFile:path atomically:YES];
        return image;
    }
        
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [UIImage imageWithData:data scale:scale];
}

+ (void)clearCachedImages
{
    NSError *error = nil;
    
    NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *cachedImagesDirectory = [cacheDirectory stringByAppendingPathComponent:@"UICachedImages"];
    
    NSArray *contents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:cachedImagesDirectory error:&error];
    if (error) NSLog(@"contentsOfDirectoryAtPath error : %@",error.localizedDescription);
    
    for (NSString *filePath in contents) {
        
        NSString *path = [cachedImagesDirectory stringByAppendingPathComponent:filePath];

        if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
            
            [[NSFileManager defaultManager] removeItemAtPath:path error:&error];
            if (error) NSLog(@"removeItemAtPath error : %@",error.localizedDescription);
            else NSLog(@"removed Item At Path : %@",path);
        }
    }
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
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    // Add a clip before drawing anything, in the shape of an rounded rect
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);

    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:rect];
    [bezierPath addClip];
    
    // Draw the image
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
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return result;
}

@end

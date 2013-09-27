//
//  UIImage+Filter.h
//  EpicList
//
//  Created by Ignacio on 9/27/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Filter)

- (UIImage *)filterGlaussianBlurWithRadius:(CGFloat)radius;

@end

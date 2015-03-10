//
//  UIImage+NRSTint.h
//  ef
//
//  Created by James An on 5/26/14.
//  Copyright (c) 2014 Nurun Shanghai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NRSTint)

- (UIImage *)tintedGradientImageWithColor:(UIColor *)tintColor;
- (UIImage *)tintedImageWithColor:(UIColor *)tintColor;

@end

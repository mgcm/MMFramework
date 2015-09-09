//
//  UIImage+Color.m
//  Puzzly
//
//  Created by Milton Moura on 24/03/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import "UIImage+Color.h"


@implementation UIImage (Color)


+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    return [UIImage imageWithColor:color andSize:rect];
}


+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGRect)size
{
    CGRect rect = size;
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}


@end

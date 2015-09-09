//
//  UIImage+Color.h
//  Puzzly
//
//  Created by Milton Moura on 24/03/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGRect)size;

@end

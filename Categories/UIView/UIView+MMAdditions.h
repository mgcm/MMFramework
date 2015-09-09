//
//  UIView+MMAdditions.h
//  AzGuide
//
//  Created by Milton Moura on 10/04/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MMAdditions)

- (void)mm_addShadow;
- (void)mm_addShadow:(CGRect)shadowRect;
- (UIImage *)mm_snapshot;

@end

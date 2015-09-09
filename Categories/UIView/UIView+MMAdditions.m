//
//  UIView+MMAdditions.m
//  AzGuide
//
//  Created by Milton Moura on 10/04/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import "UIView+MMAdditions.h"


@implementation UIView (MMAdditions)


- (void)mm_addShadow
{
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0f, 2.0f);
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 2.0f;
    self.layer.shadowPath = shadowPath.CGPath;
}


- (void)mm_addShadow:(CGRect)shadowRect
{
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:shadowRect];
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0f, 2.0f);
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 10.0f;
    self.layer.shadowPath = shadowPath.CGPath;
}


- (UIImage *)mm_snapshot
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [[UIScreen mainScreen] scale]);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}


@end

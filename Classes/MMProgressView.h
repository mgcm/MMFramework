//
//  MMProgressView.h
//
//  Created by Milton Moura on 11/07/14.
//  Copyright (c) 2014 Milton Moura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMProgressView : UIView

- (id)initWithFrame:(CGRect)frame andDisplacement:(CGPoint)point;
- (void)setViewProgress:(CGFloat)progress;

@end

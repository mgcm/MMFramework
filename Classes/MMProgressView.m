//
//  MMProgressView.m
//
//  Created by Milton Moura on 11/07/14.
//  Copyright (c) 2014 Milton Moura. All rights reserved.
//

#import "MMProgressView.h"

///////////////////////////////////////////////////////////////////////////////
#pragma mark - Private Interface
///////////////////////////////////////////////////////////////////////////////


@interface MMProgressView ()

@property (nonatomic, retain) CAShapeLayer *placeholderShapeLayer;
@property (nonatomic, retain) CAShapeLayer *progressShapeLayer;
@property (nonatomic, assign) CGFloat progress;

@end


///////////////////////////////////////////////////////////////////////////////
#pragma mark - Implementation
///////////////////////////////////////////////////////////////////////////////


@implementation MMProgressView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.frame = frame;
        self.bounds = frame;

        _progress = 0.0f;

        _progressShapeLayer = [CAShapeLayer layer];
        _progressShapeLayer.bounds = CGRectMake(0, 0, 40, 40);
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:_progressShapeLayer.bounds];
        [path applyTransform:CGAffineTransformMakeTranslation(self.center.x - self.frame.origin.x, self.center.y - self.frame.origin.y)];
        _progressShapeLayer.path = path.CGPath;
        _progressShapeLayer.fillColor = [UIColor clearColor].CGColor;
        _progressShapeLayer.strokeColor = [UIColor colorWithRed: 0 green: 0.635 blue: 0.698 alpha: 1].CGColor;
        _progressShapeLayer.lineWidth = 3.0f;
        _progressShapeLayer.strokeStart = 0.0f;
        _progressShapeLayer.strokeEnd = 0.0f;
        
        _placeholderShapeLayer = [CAShapeLayer layer];
        _placeholderShapeLayer.bounds = CGRectMake(0, 0, 40, 40);
        _placeholderShapeLayer.path = path.CGPath;
        _placeholderShapeLayer.fillColor = [UIColor clearColor].CGColor;
        _placeholderShapeLayer.strokeColor =  [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1].CGColor;
        _placeholderShapeLayer.lineWidth = 3.0f;
        _placeholderShapeLayer.strokeStart = 0.0f;
        _placeholderShapeLayer.strokeEnd = 1.0f;
        [self.layer addSublayer:_placeholderShapeLayer];
        [self.layer addSublayer:_progressShapeLayer];
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame andDisplacement:(CGPoint)point
{
    self = [self initWithFrame:frame];
    if (self) {
        self.center = CGPointMake(self.center.x + point.x, self.center.y + point.y);
    }
    return self;
}


- (void)setViewProgress:(CGFloat)progress
{
    _progress = progress * 2;

    _progressShapeLayer.strokeStart = 0.0f;
    _progressShapeLayer.strokeEnd = _progress / 2;

    [self setNeedsDisplay];
}

@end

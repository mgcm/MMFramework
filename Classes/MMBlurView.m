//
//  MMBlurView.m
//  AzGuide
//
//  Created by Milton Moura on 01/06/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import "AppDelegate.h"
#import "MMBlurView.h"


///////////////////////////////////////////////////////////////////////////////
#pragma mark - Private Interface
///////////////////////////////////////////////////////////////////////////////


@interface MMBlurView ()

@end



///////////////////////////////////////////////////////////////////////////////
#pragma mark - Implementation
///////////////////////////////////////////////////////////////////////////////


@implementation MMBlurView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = [[UIScreen mainScreen] bounds];
        self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.2];
    }
    return self;
}



@end

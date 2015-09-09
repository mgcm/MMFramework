//
//  UILabel+MMAdditions.m
//  AzGuide
//
//  Created by Milton Moura on 12/06/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import "UILabel+MMAdditions.h"


@implementation UILabel (MMAdditions)

- (void)mm_addSoftShadow
{
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowRadius = 5.0f;
    self.layer.shadowOpacity = 1;
    self.layer.shadowOffset = CGSizeZero;
    self.layer.masksToBounds = NO;
}

@end

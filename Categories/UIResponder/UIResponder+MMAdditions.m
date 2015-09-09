//
//  UIResponder+MMAdditions.m
//  AzGuide
//
//  Created by Milton Moura on 20/04/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import "UIResponder+MMAdditions.h"


static __weak id currentFirstResponder;


@implementation UIResponder (MMAdditions)

+ (id)currentFirstResponder
{
    currentFirstResponder = nil;
    [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    return currentFirstResponder;
}


- (void)findFirstResponder:(id)sender
{
    currentFirstResponder = self;
}


@end

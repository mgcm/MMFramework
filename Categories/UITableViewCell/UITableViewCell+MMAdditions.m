//
//  UITableViewCell+MMAdditions.m
//  Puzzly
//
//  Created by Milton Moura on 19/12/14.
//  Copyright (c) 2014 Milton Moura. All rights reserved.
//

#import "MMFramework.h"
#import "UITableViewCell+MMAdditions.h"


@implementation UITableViewCell (MMAdditions)


- (void)mm_delaysContentTouches:(BOOL)delays
{
    for (id view in self.subviews)
    {
        // looking for a UITableViewCellScrollView
        if ([NSStringFromClass([view class]) isEqualToString:MMEncodeText(@"VJUbcmfWjfxDfmmTdspmmWjfx", -1)])
        {
            // this test is here for safety only, also there is no UITableViewCellScrollView in iOS8
            if([view isKindOfClass:[UIScrollView class]])
            {
                // turn OFF delaysContentTouches in the hidden subview
                UIScrollView *scroll = (UIScrollView *) view;
                scroll.delaysContentTouches = delays;
            }
            break;
        }
    }
}


@end

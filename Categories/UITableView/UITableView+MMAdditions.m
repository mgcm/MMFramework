//
//  UITableView+MMAdditions.m
//  Puzzly
//
//  Created by Milton Moura on 19/12/14.
//  Copyright (c) 2014 Milton Moura. All rights reserved.
//

#import "UITableView+MMAdditions.h"

@implementation UITableView (MMAdditions)


- (void)mm_delaysContentTouches:(BOOL)delays
{
    // iterate over all the UITableView's subviews
    for (id view in self.subviews)
    {
        if ([view respondsToSelector:@selector(setDelaysContentTouches:)]) {
            [view setDelaysContentTouches:delays];
        }
    }
}


@end

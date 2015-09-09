//
//  NSObject+MMAdditions.m
//  AzGuide
//
//  Created by Milton Moura on 16/06/15.
//  Copyright (c) 2015 Milton Moura. All rights reserved.
//

#import <objc/runtime.h>
#import "NSObject+MMAdditions.h"


@implementation NSObject (MMAdditions)


@dynamic mm_context;


- (void)setMm_context:(id)ctx {
    objc_setAssociatedObject(self, @selector(mm_context), ctx, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (id)mm_context {
    return objc_getAssociatedObject(self, @selector(mm_context));
}


@end

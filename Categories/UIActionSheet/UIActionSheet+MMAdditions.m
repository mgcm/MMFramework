

#import "UIActionSheet+MMAdditions.h"
#import <objc/runtime.h>


@implementation UIActionSheet (MMAdditions)


@dynamic context;


- (void)setContext:(id)context {
    objc_setAssociatedObject(self, @selector(context), context, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (id)context {
    return objc_getAssociatedObject(self, @selector(context));
}


@end
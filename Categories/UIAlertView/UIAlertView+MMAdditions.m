

#import "UIAlertView+MMAdditions.h"
#import <objc/runtime.h>


@implementation UIAlertView (MMAdditions)


@dynamic context;


+ (UIAlertView *)mm_alertWithMessage:(NSString *)message
{
    return [[UIAlertView alloc] initWithTitle: NSLocalizedString(@"Alert", @"Alert View Title")
                                      message: message
                                     delegate: self
                            cancelButtonTitle: nil
                            otherButtonTitles: NSLocalizedString(@"OK", @"Alert View OK Button"), nil];
}


- (void)setContext:(id)context {
    objc_setAssociatedObject(self, @selector(context), context, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (id)context {
    return objc_getAssociatedObject(self, @selector(context));
}


@end
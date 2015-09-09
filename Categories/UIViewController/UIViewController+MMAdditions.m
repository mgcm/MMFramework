

#import "UIViewController+MMAdditions.h"


@implementation UIViewController (MMAdditions)


///////////////////////////////////////////////////////////////////////////////
#pragma mark - Remove Navigation Bar Shadow in iOS 7 apps
///////////////////////////////////////////////////////////////////////////////


- (void)mm_removeNavigationBarShadow
{
    for (UIView *view in self.navigationController.navigationBar.subviews) {
        for (UIView *view2 in view.subviews) {
            if ([view2 isKindOfClass:[UIImageView class]] && view2.frame.size.height < 2) {
                [view2 removeFromSuperview];
            }
        }
    }
}


- (BOOL)mm_isBeingPopped
{
    if (self.navigationController && self.navigationController.viewControllers) {
        NSArray *viewControllers = self.navigationController.viewControllers;
        if ([viewControllers indexOfObject:self] == NSNotFound) {
            return YES;
        }
    }
    return NO;
}

@end
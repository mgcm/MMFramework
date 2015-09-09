

#import <UIKit/UIKit.h>


@interface UIAlertView (MMAdditions)


@property (nonatomic, strong) id context;


+ (UIAlertView *)mm_alertWithMessage:(NSString *)message;


@end

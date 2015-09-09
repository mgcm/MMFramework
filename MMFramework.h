
// Classes
#import "MMMailComposeViewController.h"
#import "MMMessageComposeViewController.h"
#import "MMProgressView.h"
#import "MMSearchBar.h"
#import "MMBlurView.h"

// Categories
#import "NSObject+MMAdditions.h"
#import "UIAlertView+MMAdditions.h"
#import "UIActionSheet+MMAdditions.h"
#import "UIControl+MMAdditions.h"
#import "UIImage+Alpha.h"
#import "UIImage+BlurredFrame.h"
#import "UIImage+Color.h"
#import "UIImage+Resize.h"
#import "UIImage+RoundedCorner.h"
#import "UIImage+ImageEffects.h"
#import "UILabel+MMAdditions.h"
#import "UIResponder+MMAdditions.h"
#import "UITableView+MMAdditions.h"
#import "UITableViewCell+MMAdditions.h"
#import "UIView+MMAdditions.h"
#import "UIViewController+MMAdditions.h"

// Macros

#define MMDynamicCast(x, c) ((c *) ([x isKindOfClass:[c class]] ? x : nil))

#define IS_35_INCH ([[UIScreen mainScreen] bounds].size.height == 480)
#define IS_4_INCH ([[UIScreen mainScreen] bounds].size.height == 568)
#define DEVICE_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define DEVICE_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define IS_IPHONE (UIUserInterfaceIdiomPhone == [[UIDevice currentDevice] userInterfaceIdiom])
#define IS_IPAD (UIUserInterfaceIdiomPad == [[UIDevice currentDevice] userInterfaceIdiom])

#ifdef __IPHONE_7_0 
#define isIOS7 floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1
#endif

#ifdef __IPHONE_8_0
#define isIOS8 floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_7_1
#endif


// Completion Blocks


typedef void (^MMArrayResultCompletionBlock)(NSArray *results);


// C-style functions

extern NSString *MMEncodeText(NSString *string, int key);

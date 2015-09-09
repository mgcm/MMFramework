//
//  UIControl+MMAdditions.h
//
//  Created by Milton Moura on 10/12/13.
//
//

#import <UIKit/UIKit.h>

@interface UIControl (MMAdditions)

@property(nonatomic, assign) UIEdgeInsets hitTestEdgeInsets;

- (void)enableBouncy;

@end

//
//  UIViewController+XD_GetNavgationController.h
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,XD_BackItemStyle) {
    
    XD_BackItemDefault, // 黑色返回
    XD_BackItemLight // 白色返回
};

@interface UIViewController (XD_GetNavgationController)

@property (nonatomic, strong, readonly)XD_NavgationController *xd_navigationController;

- (void)xd_setNavBackItemStyle:(XD_BackItemStyle)style;

@end

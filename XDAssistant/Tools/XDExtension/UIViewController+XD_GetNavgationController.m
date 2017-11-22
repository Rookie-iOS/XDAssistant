//
//  UIViewController+XD_GetNavgationController.m
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "UIViewController+XD_GetNavgationController.h"

@implementation UIViewController (XD_GetNavgationController)

- (XD_NavgationController *)xd_navigationController {
    
    XD_NavgationController *navigationController = (XD_NavgationController *)self.navigationController;
    return navigationController;
}

- (void)xd_setNavBackItemStyle:(XD_BackItemStyle)style {
    
    UIImage *backItemImage = style == XD_BackItemLight ? [UIImage imageNamed:@"back_2"] : [UIImage imageNamed:@"back_1"];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.backgroundColor = [UIColor redColor];
    [backBtn setImage:backItemImage forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(xd_popToViewController) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    if(@available(iOS 11.0, *)){
        
        self.navigationItem.leftBarButtonItems = @[leftItem];
        for (UIView *view in self.navigationController.navigationBar.subviews) {
            if ([NSStringFromClass(view.class) isEqualToString:@"_UINavigationBarContentView"]) {
                for (UIView *subview in view.subviews) {                    
                    NSLog(@"====%@\n",subview);
                }
            }
        }
    }else {
        UIBarButtonItem * spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        spaceItem.width = -16;
        self.navigationItem.leftBarButtonItems = @[spaceItem,leftItem];
    }
}

- (void)xd_popToViewController {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end

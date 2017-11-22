//
//  XD_NavgationController+XD_NavStyle.m
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "XD_NavgationController+XD_NavStyle.h"

@implementation XD_NavgationController (XD_NavStyle)

- (void)setNavgationBarColor:(XD_NavColor)color {
    
    NSString *imgName = nil;
    switch (color) {
        case XD_NavBlue:
            imgName = @"bg_1";
            break;
        case XD_NavCyan:
            imgName = @"bg_2";
            break;
        case XD_NavGreen:
            imgName = @"bg_3";
            break;
        default:
            break;
    }
    UIImage *navBg = [UIImage imageNamed:imgName];
    [self.navigationBar setBackgroundImage:[navBg resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeStretch] forBarMetrics:UIBarMetricsDefault];
}

@end

//
//  XD_NavgationController+XD_NavStyle.h
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "XD_NavgationController.h"

typedef NS_ENUM(NSInteger, XD_NavColor) {
    
    XD_NavBlue, //  蓝色
    XD_NavGreen, // 绿色
    XD_NavCyan // 青色
};


@interface XD_NavgationController (XD_NavStyle)

- (void)setNavgationBarColor:(XD_NavColor)color;

@end

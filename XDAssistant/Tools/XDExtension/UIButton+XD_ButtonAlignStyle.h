//
//  UIButton+XD_ButtonAlignStyle.h
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,XD_BtnAlignStyle) {
    
    XD_AlignLeft, // 文字在左
    XD_AlignRight, // 文字在右
    XD_AlignTop, // 文字在上
    XD_AlignBottom // 文字在下
};

@interface UIButton (XD_ButtonAlignStyle)

- (void)xd_setBtnAlignStyle:(XD_BtnAlignStyle)style;

@end

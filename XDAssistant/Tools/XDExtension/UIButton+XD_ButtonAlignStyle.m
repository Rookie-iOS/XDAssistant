//
//  UIButton+XD_ButtonAlignStyle.m
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "UIButton+XD_ButtonAlignStyle.h"

@implementation UIButton (XD_ButtonAlignStyle)

- (void)xd_setBtnAlignStyle:(XD_BtnAlignStyle)style {
    
    // 为了准确获取titleLabel和imageView的frame
    [self layoutIfNeeded];
    CGRect titleFrame = self.titleLabel.frame;
    CGRect imageFrame = self.imageView.frame;
    switch (style) {
        case XD_AlignTop:
            self.titleEdgeInsets = UIEdgeInsetsMake(imageFrame.size.height + 8, -(imageFrame.size.width), 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0,0,titleFrame.size.height + 8,-(titleFrame.size.width));
            break;
        case XD_AlignBottom:
            
            break;
        case XD_AlignLeft:
            
            break;
        case XD_AlignRight:
        default:
            break;
    }
}


@end

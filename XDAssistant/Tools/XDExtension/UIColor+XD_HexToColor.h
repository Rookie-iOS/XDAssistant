//
//  UIColor+XD_HexToColor.h
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XD_HexToColor)

/**
 十六进制颜色转换
 
 @param hex 十六进制颜色
 @return UIColor
 */
+ (UIColor *)xd_hexToColor:(int)hex;

@end

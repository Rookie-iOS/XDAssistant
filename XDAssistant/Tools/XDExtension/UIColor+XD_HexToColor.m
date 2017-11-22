//
//  UIColor+XD_HexToColor.m
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "UIColor+XD_HexToColor.h"

@implementation UIColor (XD_HexToColor)

/**
 颜色转换
 */
+ (UIColor *)xd_hexToColor:(int)hexColor {
    
    return [UIColor colorWithRed:((hexColor & 0xFF0000) >> 16)/255.0 green:((hexColor & 0xFF00) >> 8)/255.0 blue:(hexColor & 0xFF)/255.0 alpha:1.0];
}

@end

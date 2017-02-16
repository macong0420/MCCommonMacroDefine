//
//  UIColor+Common.h
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//


#import <UIKit/UIKit.h>
@interface UIColor (Common)
//根据16进制参数设置颜色
+ (UIColor *)colorWithHexadecimalString:(NSString *)color alpha:(float)ap;

+ (UIColor *)colorWithString:(NSString *)colorstr;
@end

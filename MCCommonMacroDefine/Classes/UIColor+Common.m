//
//  UIColor+Common.m
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import "UIColor+Common.h"

@implementation UIColor (Common)
+ (UIColor *)colorWithHexadecimalString:(NSString *)color alpha:(float)ap
{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //r
    NSString *rString = [cString substringWithRange:range];
    
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:ap];
}

+ (UIColor *)colorWithString:(NSString *)colorstr{
    NSArray *colors = [colorstr componentsSeparatedByString:@","];
    UIColor *color =  [UIColor colorWithRed:[[colors objectAtIndex:0] floatValue] / 255
                                      green:[[colors objectAtIndex:1] floatValue] / 255
                                       blue:[[colors objectAtIndex:2] floatValue] / 255
                                      alpha:[[colors objectAtIndex:3] floatValue]];
    return color;
}

@end

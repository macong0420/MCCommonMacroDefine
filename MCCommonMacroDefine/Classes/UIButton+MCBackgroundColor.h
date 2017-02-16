//
//  UIButton+MCBackgroundColor.h
//  MCPodDemo
//
//  Created by mcc on 2017/2/16.
//  Copyright © 2017年 mcc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (MCBackgroundColor)

/**
 *  @brief  使用颜色设置按钮背景
 *
 *  @param backgroundColor 背景颜色
 *  @param state           按钮状态
 */
- (void)mc_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

@end

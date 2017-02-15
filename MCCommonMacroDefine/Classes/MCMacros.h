//
//  MCMacros.h
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#ifndef MCMacros_h
#define MCMacros_h

/**
 *  尺寸
 */
#define CURRENT_SYS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define MCScreenHeight  [[UIScreen mainScreen] bounds].size.height
#define MCScreenWidth   [[UIScreen mainScreen] bounds].size.width
#define MCIPhone4       MCScreenHeight<=480
#define MCIPhone5s      MCScreenHeight==568
#define MCIPhone6       MCScreenHeight==667

/**
 *  色值宏
 */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromRGBAndAlpha(rgbValue,alphaValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(float)alphaValue]

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(CGFloat)(r)/255.0 green:(CGFloat)(g)/255.0 blue:(CGFloat)(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(CGFloat)(r)/255.0 green:(CGFloat)(g)/255.0 blue:(CGFloat)(b)/255.0 alpha:a]

/**
 *  其他
 */
#define WEAKSELF typeof(self) weakSelf = self;

#define BLOCKSELF(classObject) __block __typeof(classObject) blockSelf = classObject

#define WEAKSELF_ARC(classObject) __weak __typeof(classObject) weakSelfARC = classObject;

#define STRONGSELF_ARC(classObject) __strong __typeof(classObject) strongSelfARC = classObject;

#endif /* MCMacros_h */

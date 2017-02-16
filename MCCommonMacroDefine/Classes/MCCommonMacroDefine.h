//
//  MCCommonMacroDefine.h
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCAppUtils.h"
#import "MCMacros.h"
#import "Reachability.h"
#import "UIView+Sizes.h"
#import "UIColor+Common.h"
#import "NSDate+Common.h"
#import "MCExtensionLabel.h"
#import "UIButton+MCBackgroundColor.h"

#define MCColor(colorName,alphaValue)  [UIColor colorWithHexadecimalString:colorName alpha:alphaValue]

#define MCFont(fontSize)  [UIFont systemFontOfSize:fontSize]

@interface MCCommonMacroDefine : NSObject

@end

//
//  MCAppUtils.h
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCAppUtils : NSObject

+(NSString*)getCurrntNet;

+ (BOOL)netWorkEnable;

+(NSInteger)isNextAppLuanch;

+(NSString*)urlEncode:(id<NSObject>)value;

@end

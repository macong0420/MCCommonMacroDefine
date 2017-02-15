//
//  NSDate+Common.h
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Common)
/**
 *	@brief	计算时间差
 *
 *	@param  str 时间 endString: 结尾词 '更新''发布'等 XX分钟前更新等
 *
 *	@return	UIImage
 */
+ (NSString *)compareCurrentTime:(NSString *)str endString:(NSString *)endStr;

/**
 *	@brief	计算时间差
 */
+ (NSString *)compareCurrentTimeWithOutSratus:(NSString *)str;

/**
 *	@brief	当前时间是否在一个时间段内
 *	@return	UIImage
 */
+ (BOOL)isCureentTimeBetweenStartime:(NSString *)startTime endTime:(NSString *)endTime;

@end

//
//  NSDate+Common.m
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import "NSDate+Common.h"
#import <UIKit/UIKit.h>
@implementation NSDate (Common)

//计算时间差
+ (NSString *)compareCurrentTime:(NSString *)str endString:(NSString *)endStr
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY.MM.dd HH:mm:ss"];
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *datenow = [NSDate date];
    //设置一个字符串的时间
    NSDateFormatter * dm = [[NSDateFormatter alloc]init];
    //指定输出的格式   这里格式必须是和上面定义字符串的格式相同，否则输出空
    [dm setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate * newdate = [dm dateFromString:str];
    CGFloat dd = (CGFloat)[datenow timeIntervalSince1970] - [newdate timeIntervalSince1970];
    NSString *timeString=@"";
    
    if (dd/60 < 1.0f) {
        timeString=[NSString stringWithFormat:@"刚刚%@",endStr];
    }
    if (dd/60 > 1.0f && dd/3600 < 1.0f)
    {
        
        timeString = [NSString stringWithFormat:@"%d", (int)dd/60];
        timeString=[NSString stringWithFormat:@"%@分钟前%@", timeString,endStr];
    }
    if (dd/3600 > 1.0f && dd/86400 < 1.0f)
    {
        timeString = [NSString stringWithFormat:@"%d", (int)dd/3600];
        timeString=[NSString stringWithFormat:@"%@小时前%@", timeString,endStr];
    }
    
    if (dd/86400 > 1.0f)
    {
        if (str.length >= 10) {
            NSString *stringTime = [str substringToIndex:10];
            stringTime = [stringTime stringByReplacingOccurrencesOfString:@"-" withString:@"."];
            timeString=[NSString stringWithFormat:@"%@%@", stringTime,endStr];
        }
    }
    return timeString;
}

//计算时间差
+ (NSString *) compareCurrentTimeWithOutSratus:(NSString *)str
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY.MM.dd HH:mm:ss"];
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *datenow = [NSDate date];
    //设置一个字符串的时间
    NSDateFormatter * dm = [[NSDateFormatter alloc]init];
    //指定输出的格式   这里格式必须是和上面定义字符串的格式相同，否则输出空
    [dm setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate * newdate = [dm dateFromString:str];
    CGFloat dd = (CGFloat)[datenow timeIntervalSince1970] - [newdate timeIntervalSince1970];
    NSString *timeString=@"";
    
    if (dd/60 < 1.0f) {
        timeString=[NSString stringWithFormat:@"刚刚"];
    }
    if (dd/60 > 1.0f && dd/3600 < 1.0f)
    {
        
        timeString = [NSString stringWithFormat:@"%d", (int)dd/60];
        timeString=[NSString stringWithFormat:@"%@分钟前", timeString];
    }
    if (dd/3600 > 1.0f && dd/86400 < 1.0f)
    {
        timeString = [NSString stringWithFormat:@"%d", (int)dd/3600];
        timeString=[NSString stringWithFormat:@"%@小时前", timeString];
    }
    
    if (dd/86400 > 1.0f)
    {
        if (str.length >= 10) {
            NSString *stringTime = [str substringToIndex:10];
            stringTime = [stringTime stringByReplacingOccurrencesOfString:@"-" withString:@"."];
            timeString=[NSString stringWithFormat:@"%@", stringTime];
        }
    }
    return timeString;
}

//计算是否在限免活动期间
+ (BOOL)isCureentTimeBetweenStartime:(NSString *)startTime endTime:(NSString *)endTime
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY.MM.dd HH:mm:ss"];
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *datenow = [NSDate date];
    //设置一个字符串的时间
    NSDateFormatter * dm = [[NSDateFormatter alloc] init];
    //指定输出的格式   这里格式必须是和上面定义字符串的格式相同，否则输出空
    [dm setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate * startDate = [dm dateFromString:startTime];
    NSDate *endDate = [dm dateFromString:endTime];
    CGFloat startdd = (CGFloat)[datenow timeIntervalSince1970] - [startDate timeIntervalSince1970];
    CGFloat enddd = (CGFloat)[endDate timeIntervalSince1970] - [datenow timeIntervalSince1970];
    if (startdd >= 0 && enddd >= 0) {
        return YES;
    } else {
        return NO;
    }
}


@end

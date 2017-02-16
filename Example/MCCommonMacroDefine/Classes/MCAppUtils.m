//
//  MCAppUtils.m
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import "MCAppUtils.h"
#import "MCMacros.h"
#import "Reachability.h"
@implementation MCAppUtils

+(NSString*) getCurrntNet
{
    NSString* result;
    Reachability *r = [Reachability reachabilityForInternetConnection];
    switch ([r currentReachabilityStatus]) {
        case NotReachable:     // 没有网络连接
            result=@"none";
            break;
        case ReachableViaWWAN: // 使用3G网络
            result=@"3g";
            break;
        case ReachableViaWiFi: // 使用WiFi网络
            result=@"wifi";
            break;
    }
    return result;
    
}

+ (BOOL)netWorkEnable
{
    Reachability *r = [Reachability reachabilityForInternetConnection];
    
    switch ([r currentReachabilityStatus]) {
            
        case NotReachable:     // 没有网络连接
            
            return NO;
            break;
            
        default:
            return YES;
    }
    
}


static NSString * LuanchCount = @"luanchCount";
+(NSInteger)isNextAppLuanch
{
    NSInteger count = [[NSUserDefaults standardUserDefaults] integerForKey:LuanchCount];
    if (count == 0) {
        [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:LuanchCount];
        return 0;
    } else {
        count++;
        [[NSUserDefaults standardUserDefaults] setInteger:count forKey:LuanchCount];
    }
    return count ;
}

+(NSString*)urlEncode:(id<NSObject>)value
{
    //make sure param is a string
    if ([value isKindOfClass:[NSNumber class]]) {
        value = [(NSNumber*)value stringValue];
    }
    
    NSAssert([value isKindOfClass:[NSString class]], @"request parameters can be only of NSString or NSNumber classes. '%@' is of class %@.", value, [value class]);
    
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                                 NULL,
                                                                                 (__bridge CFStringRef) value,
                                                                                 NULL,
                                                                                 (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                                 kCFStringEncodingUTF8));
}



@end

//
//  MCExtensionLabel.h
//  Demo
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 mcc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;

@interface MCExtensionLabel : UILabel
@property (nonatomic,assign) VerticalAlignment verticalAlignment;

- (void)setVerticalAlignment:(VerticalAlignment)verticalAlignment;
//给UILabel设置行间距和字间距
+ (void)setLabelSpace:(UILabel*)label withValue:(NSString*)str withFont:(UIFont*)font;
//计算UILabel的高度(带有行间距的情况)
+ (CGFloat)getSpaceLabelHeight:(NSString*)str withFont:(UIFont*)font withWidth:(CGFloat)width;

+ (void)setLabelSpace:(UILabel*)label lineSpace:(CGFloat)lineSpace withValue:(NSString*)str withFont:(UIFont*)font;

+ (void)setLabelSpace:(UILabel*)label withValue:(NSString*)str withFont:(UIFont*)font withSpcing:(int)lineSpcing;

+ (CGFloat)getSpaceLabelHeight:(NSString*)str withFont:(UIFont*)font withWidth:(CGFloat)width withLineSpcing:(int)lineSpcing;

- (CGSize)boundingRectWithSize:(CGSize)size;

+ (UILabel *)labelWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize;

+ (UILabel *)labelWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment;

- (CGSize)boundingRectWithSize:(CGSize)size;

- (void)textLeftTopAlign;

@end

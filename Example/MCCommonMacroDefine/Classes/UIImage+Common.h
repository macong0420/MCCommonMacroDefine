//
//  UIImage+Common.h
//  MCCommonMacroDefine
//
//  Created by mcc on 2017/2/14.
//  Copyright © 2017年 macongcong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Common)

/**
 *	@brief	根据背景图片生成一个虚化的图片
 */
- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;
- (UIImage *)imageFromColor:(UIColor *)color;

/**
 *	@brief	通过颜色来生成一个虚线背景图片
 */
+ (UIImage *)imageWithSize:(CGSize)size borderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;

/**
 *	@brief	通过颜色来生成一个纯色图片
 *	@return	UIImage
 */
+ (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)color;

/**
 *	@brief	截取图片的一部分
 */
- (UIImage *)clipImageInRect:(CGRect)rect;

/**
 *	@brief	改变图片的alpha 并生成修改后的图片
 */
+ (UIImage *)imageByApplyingAlpha:(CGFloat)alpha  image:(UIImage*)image;

/**
 *  UIView 加上 color 作为一个图片
 */
+ (UIImage*)convertViewToImageWithSize:(CGSize)size color:(UIColor *)color;

@end






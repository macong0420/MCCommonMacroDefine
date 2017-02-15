# MCCommonMacroDefine 

     1.定义了常用的宏,比如屏幕宽高,颜色设置等
     
     
     2.使用的时候只需要导入MCCommonMacroDefine.h 头文件就可以使用.
     
     
     
# 使用用例



    1.根据16进制设置颜色 btn.backgroundColor = [UIColor colorWithHexadecimalString:@"00bf99" alpha:1.0];
    
    
    
    2.尺寸 MCScreenWidth(屏幕宽度) MCScreenHeight(屏幕高度) CURRENT_SYS_VERSION(当前版本号)
    
    
    
    
# pod  MCCommonMacroDefine
   
   
    target 'YourApp' do
    
    
    pod 'MCCommonMacroDefine', '~> 1.0.1’
    
    
    end



## 联系我

 qq: 271269841
 
# MCCommonMacroDefine

[![CI Status](http://img.shields.io/travis/macong0420/MCCommonMacroDefine.svg?style=flat)](https://travis-ci.org/macong0420/MCCommonMacroDefine)
[![Version](https://img.shields.io/cocoapods/v/MCCommonMacroDefine.svg?style=flat)](http://cocoapods.org/pods/MCCommonMacroDefine)
[![License](https://img.shields.io/cocoapods/l/MCCommonMacroDefine.svg?style=flat)](http://cocoapods.org/pods/MCCommonMacroDefine)
[![Platform](https://img.shields.io/cocoapods/p/MCCommonMacroDefine.svg?style=flat)](http://cocoapods.org/pods/MCCommonMacroDefine)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MCCommonMacroDefine is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MCCommonMacroDefine"
```

## Author

macong0420, macongcong0420@126.com

## License

MCCommonMacroDefine is available under the MIT license. See the LICENSE file for more info.

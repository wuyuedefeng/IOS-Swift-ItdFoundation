//
//  UIColor_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/15.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UIColor {
    /**
    *  传入eg. #ff0000 转化成颜色
    *
    *  @param hexString eg. #ff0000
    *
    *  @return color类型的数据
    */
    public class func itd_colorWithHexString(hexString:NSString) -> UIColor {
        return self.itd_colorWithHexString(hexString, alpha: 1.0)
    }
    /**
    *  传入eg. #ff0000 转化成颜色
    *
    *  @param hexString eg. #ff0000
    *  @param alpha     透明度
    *
    *  @return color类型的数据
    */
    public class func itd_colorWithHexString(hexString:NSString,alpha:CGFloat) -> UIColor {
        
        var inHexString:NSString?
        
        if hexString.hasPrefix("0x") || hexString.hasPrefix("0X"){
            inHexString = hexString.substringFromIndex(2);
        }else if hexString.hasPrefix("#"){
            inHexString = hexString.substringFromIndex(1);
        }
        
        var value:UInt32 = 0
        var scanner:NSScanner = NSScanner.localizedScannerWithString(inHexString! as String) as! NSScanner
        var flag:Bool = scanner.scanHexInt(&value)
        
        if false == flag {
            return UIColor.clearColor()
        }
        
        var r,g,b :CGFloat
        b = CGFloat(value & 0x0000FF)
        value = value >> 8
        g = CGFloat(value & 0x0000FF)
        value = value >> 8
        r = CGFloat(value)
        
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: alpha)
    }
    
    /**
    *  根据十六进制颜色值返回UIColor。
    *  @param  hexColor:十六进制颜色值。
    *  return  UIColor。
    */
    public class func itd_colorWithHexInteger(hexInteger:NSInteger,alpha:CGFloat) ->UIColor {
        return UIColor(red: ((CGFloat) ((hexInteger & 0xFF0000) >> 16)) / 0xFF,
            green: ((CGFloat) ((hexInteger & 0xFF00)   >> 8))  / 0xFF,
            blue: ((CGFloat)  (hexInteger & 0xFF))            / 0xFF,
            alpha: alpha)
    }

}

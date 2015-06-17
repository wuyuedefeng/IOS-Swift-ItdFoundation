//
//  NSDate_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/17.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import Foundation

extension NSDate{
    /**
    *  当前时间 根式输出：2014-07-28 16:46:54
    *
    *  @return 2014-07-28 16:46:54
    */
    class func itd_string_of_current_DateTime() -> String{
        return NSDate()._convertDateToStringWithFormat_itd("yyyy-MM-dd HH:mm:ss")
    }
    
    /**
    *  返回中国时间 格式：yyyy-MM-dd
    *
    *  @return 时间字符串
    */
    class func itd_string_of_current_Date() -> String {
       return NSDate()._convertDateToStringWithFormat_itd("yyyy-MM-dd")
    }
    
    /**
    *  内部方法 按照时间格式返回时间字符串
    *
    *  @return 时间字符串
    */
    func _convertDateToStringWithFormat_itd(formatString:String) -> String{
        var dateFormatter:NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = formatString
        return dateFormatter.stringFromDate(self)
    }
    
    /**
    *  根据字符串转换格式为日期类型
    */
    class func itd_date_from_String(dateString:String, format:String) -> NSDate? {
        var dateFormatter:NSDateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.localTimeZone()
        dateFormatter.dateFormat = format
        return dateFormatter.dateFromString(dateString)
    }
    
    /**
    *  @brief 时间转字符串
    *
    *  @param format 时间格式
    *
    *  @return 时间字符串
    */
    func itd_string_with_formatString(format:String) -> String? {
        var dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale.currentLocale()
        dateFormatter.timeZone = NSTimeZone.localTimeZone()
        dateFormatter.dateFormat = format
        return dateFormatter.stringFromDate(self)
    }
    
    
    
}
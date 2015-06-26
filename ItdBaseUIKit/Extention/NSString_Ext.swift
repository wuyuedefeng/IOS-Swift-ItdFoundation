//
//  NSString_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/17.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension NSString {
    
    public func itd_jsonObject() -> AnyObject? {
        if let data:NSData = self.dataUsingEncoding(NSUTF8StringEncoding){
            var error:NSError?
            if let result: AnyObject = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error){
                if error == nil && NSJSONSerialization.isValidJSONObject(result) == true{
                    return result
                }
            }
        }
        return nil
    }
    
    public func itd_sizeWithFont(font:UIFont, maxSize:CGSize)->CGSize{
        var attrs = [NSFontAttributeName:font]
        var size:CGSize = self.boundingRectWithSize(maxSize, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attrs, context: nil).size
        return size
    }
}
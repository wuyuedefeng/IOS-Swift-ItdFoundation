//
//  NSDictionary_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/17.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import Foundation

extension NSDictionary {
    
    func itd_jsonString() -> NSString? {
        var error:NSError?
        if let data = NSJSONSerialization.dataWithJSONObject(self, options: NSJSONWritingOptions.PrettyPrinted, error: &error){
            return NSString(data: data, encoding: NSUTF8StringEncoding)
        }else{
            return nil
        }
    }
}

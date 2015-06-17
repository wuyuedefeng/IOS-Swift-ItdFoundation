//
//  UITextField_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/16.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UITextField {
    
    
    public func itd_limitTextLength(length:Int) -> Void{
        
        var str:NSString = NSString(string: String(length))
        
        objc_setAssociatedObject(
            self,
            &(AssociatedKeys.kLimitTextLengthKey),
            str,
            UInt(OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        )
        
        self.addTarget(self, action: "_textFieldTextLengthLimit_itd", forControlEvents: UIControlEvents.EditingChanged)
        
    }
    
    func _textFieldTextLengthLimit_itd() ->Void{

        let lengthNumber:NSString = objc_getAssociatedObject(self, &(AssociatedKeys.kLimitTextLengthKey)) as! NSString


        var length:Int = lengthNumber.integerValue
        var string:NSString = self.text

        if Int(string.length) > length{
            var str = string.lowercaseString as String
            var len:String.Index = advance(str.startIndex, length)
            self.text = self.text.substringToIndex(len)
        }

    }
    
    private struct AssociatedKeys {
        static var kLimitTextLengthKey = "kLimitTextLengthKey"
    }
    
}

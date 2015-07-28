//
//  File.swift
//  IOS_ItdFoundation
//
//  Created by winter on 15/7/28.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UITextView{
    public func itd_setText_Safe(#text:String?) -> Bool{
        if text != nil{
            self.text = text
        }else{
            self.text = ""
            return false
        }
        return true
    }
}

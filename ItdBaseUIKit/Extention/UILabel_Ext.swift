//
//  UILabel_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/26.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UILabel {
    
    public func itd_setSizeWithString(string:NSString?, width:CGFloat = 250) -> Void{
        if let str = string{
            self.lineBreakMode = NSLineBreakMode.ByCharWrapping
            var size:CGSize = str.itd_sizeWithFont(self.font, maxSize: CGSizeMake(width, CGFloat(MAXFLOAT)))
            self.setSize(size)
            self.text = str as String
        }
    }
}

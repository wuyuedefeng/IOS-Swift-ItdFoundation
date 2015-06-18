//
//  ItdTableViewCell.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/18.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

typealias TableCellLayoutDoClosure = (ItdTableViewCell) -> ()

class ItdTableViewCell: UITableViewCell {
    
    var _layoutSubViewEndDoClosure_itd:TableCellLayoutDoClosure?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let closure = self._layoutSubViewEndDoClosure_itd{
            closure(self)
        }
    }
    
    internal func itd_layoutSubViewEndDoClosure(doClosure:TableCellLayoutDoClosure) -> Void{
        self._layoutSubViewEndDoClosure_itd = doClosure
    }
    
}

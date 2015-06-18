//
//  UIButton_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15/6/17.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UIButton{
    
    public func itd_clickDoBlock(doBlock:() -> ()){
        
        objc_setAssociatedObject(
            self,
            &(AssociatedKeys.overViewKeyButtonClick),
            VoidClosureWrapper(closure: doBlock),
            UInt(OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        )
        
        self.addTarget(self, action: "_buttonClickDo_itd", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func _buttonClickDo_itd() -> Void{
        if let cl = objc_getAssociatedObject(self, &(AssociatedKeys.overViewKeyButtonClick)) as? VoidClosureWrapper {
            if let inDoClosure = cl.closure{
                inDoClosure()
            }
        }
    }
    
    private class VoidClosureWrapper {
        var closure: (() -> Void)?
        
        init(closure: (() -> Void)?) {
            self.closure = closure
        }
    }
    
    
    private struct AssociatedKeys {
        static var overViewKeyButtonClick = "koverViewKeyButtonClick"
    }
}
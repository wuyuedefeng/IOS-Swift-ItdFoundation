//
//  ItdNavigationItem.swift
//  IOS_ItdFoundation
//
//  Created by WangSen on 15-2-26.
//  Copyright (c) 2015年 WangSen. All rights reserved.
//

import UIKit

extension UINavigationItem {
    
    //锁定导航栏左边按钮被点击
    func itd_lockLeftItem()->Void{
        self.itd_lockNavigationItem(isLeft:true, isLock: true)
    }
    //解除锁定导航栏左边按钮被点击
    func itd_unlockLeftItem()->Void{
        self.itd_lockNavigationItem(isLeft:true, isLock: false)
    }
    
    //锁定导航栏右边按钮被点击
    func itd_lockRightItem(isLock:Bool)->Void{
        self.itd_lockNavigationItem(isLeft:false, isLock: true)
    }
    //解除锁定导航栏右边按钮被点击
    func itd_unlockRightItem(isLock:Bool)->Void{
        self.itd_lockNavigationItem(isLeft:false, isLock: false)
    }
    
    
    
    private
    //isLeft为true则锁定左边，isLeft为false则坐定右边
    func itd_lockNavigationItem(#isLeft:Bool, isLock:Bool)->Void{
        
        var barItem:NSArray?
        
        if(isLeft){
            barItem = self.leftBarButtonItems
        }else{
            barItem = self.rightBarButtonItems
        }
        
        if(barItem != nil)
        {
            barItem?.enumerateObjectsUsingBlock({ (obj, idx, stop) -> Void in
                if(obj.isKindOfClass(UIBarButtonItem) || obj.isMemberOfClass(UIBarButtonItem)){
                   var barButtonItem:UIBarButtonItem = obj as UIBarButtonItem
                    barButtonItem.enabled = !isLock
                }
            })
        }
        
    }
}

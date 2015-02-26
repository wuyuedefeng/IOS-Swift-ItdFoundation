//
//  ItdNavigationController.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15-2-26.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    //获取rootViewController
    func itd_rootViewController() -> UIViewController?{
        
        if(self.viewControllers.count > 0){
            return self.viewControllers[0] as? UIViewController
        }
        
        return nil
    }
    
    //跳转到指定的ViewController
    func itd_popToViewControllerWithClass(viewControllerClass:AnyClass, animated:Bool)->Bool
    {
        for viewCtr in self.viewControllers{
            if(viewCtr.isKindOfClass(viewControllerClass))
            {
                self.popToViewController(viewCtr as UIViewController, animated:true)
                return true
            }
        }
        return false
    }
}

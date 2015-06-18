//
//  UITableViewCell_Ext.swift
//  IOS_ItdFoundation
//
//  Created by WangSen on 15-2-26.
//  Copyright (c) 2015年 WangSen. All rights reserved.
//

import UIKit

extension UITableViewCell {

    public func itd_tableView()->UITableView?{
        if var tableView = self.itd_superView_ofSuperClassType(UITableView) as? UITableView{
            return tableView
        }else{
            return nil
        }
    }
    
    
    public func itd_indexPath()->NSIndexPath?{
        if var tableView = self.itd_tableView(){
            if var indexPath = tableView.indexPathForCell(self){
                return indexPath as NSIndexPath
            }
        }
        return nil
    }
    
    

}

//
//  UITableViewCell_Ext.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15-2-26.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UITableViewCell {

    func itd_tableView()->UITableView?{
        if var tableView = self.itd_superView_ofSuperClassType(UITableView) as? UITableView{
            return tableView
        }else{
            return nil
        }
    }
    
    
    func itd_indexPath()->NSIndexPath?{
        if var tableView = self.itd_tableView(){
            if var indexPath = tableView.indexPathForCell(self){
                return indexPath as NSIndexPath
            }
        }
        return nil
    }
    
    

}

//
//  ItdView.swift
//  IOS_ItdFoundation
//
//  Created by TX-009 on 15-2-26.
//  Copyright (c) 2015年 TX-009. All rights reserved.
//

import UIKit

extension UIView {
    /////////////
    /**
    *  获得 frame的 x 的值
    *
    *  @return 获得 frame的 x 的值
    */
    func x()->CGFloat{
        return self.frame.origin.x
    }
    
    /**
    *  获得 frame的 y 的值
    *
    *  @return 获得 frame的 y 的值
    */
    func y()->CGFloat{
        return self.frame.origin.y
    }
    
    //获得bottom
    /**
    *  获得 frame的 width 的值
    *
    *  @return 获得 frame的 width 的值
    */
    func width()->CGFloat{
        return self.frame.size.width
    }
    /**
    *  获得 frame的 height 的值
    *
    *  @return 获得 frame的 height 的值
    */
    func height()->CGFloat{
        return self.frame.size.height
    }
    /**
    *  获得 frame的 origin 的值
    *
    *  @return 获得 frame的 origin 的值
    */
    func origin()->CGPoint{
        return self.frame.origin
    }
    /**
    *  获得 frame的 size 的值
    *
    *  @return 获得 frame的 size 的值
    */
    func size()->CGSize{
        return self.frame.size
    }
    
    
    //左边x坐标
    func left_x()->CGFloat{
        return x()
    }
    //右边x坐标
    func right_x()->CGFloat{
        return x() + width()
    }
    //顶部y坐标
    func top_y()->CGFloat{
        return y()
    }
    //底部y坐标
    func bottom_y()->CGFloat{
        return y() + height()
    }
    
    //距离父窗口左边距离
    func left_margin()->CGFloat{
        return x()
    }
    //距离父窗口顶部距离
    func top_margin()->CGFloat{
        return y()
    }
    //距离父窗口右边距离
    func right_margin()->CGFloat{
        if (self.superview != nil){
           return self.superview!.width() - right_x()
        }
        return 0
    }
    //距离父窗口底部距离
    func bottom_margin()->CGFloat{
        if (self.superview != nil) {
            return self.superview!.height() - bottom_y()
        }
        return 0
    }
    
    ////pragma mark - 设置x y width height 。。。
    /**
    *  设置视图的 x
    *
    *  @param x 新的frame的 x 的值
    */
    func setX(x:CGFloat)->Void{
        self.frame = rectSetX(self.frame, x: x)
    }
    
    /**
    *  设置视图的 y
    *
    *  @param y 新的frame的 y 的值
    */
    func setY(y:CGFloat)->Void{
        self.frame = rectSetY(self.frame, y: y)
    }
    /**
    *  设置视图的 width
    *
    *  @param width 新的frame的 width 的值
    */
    func setWidth(width:CGFloat)->Void{
        self.frame = rectSetWidth(self.frame, width: width)
    }
    /**
    *  设置视图的 height
    *
    *  @param height 新的frame的 height 的值
    */
    func setHeight(height:CGFloat)->Void
    {
        self.frame = rectSetHeight(self.frame, height: height)
    }
    /**
    *  设置视图的 origin
    *
    *  @param origin 新的frame的 origin 的值
    */
    func setOrigin(origin:CGPoint)->Void
    {
        self.frame = rectSetOrigin(self.frame, origin: origin)
    }
    /**
    *  设置视图的 size
    *
    *  @param size 新的frame的 size 的值
    */
    func setSize(size:CGSize)->Void{
        self.frame = rectSetSize(self.frame, size: size)
    }
    
    
    private
    //私有 x
    func rectSetX(rect:CGRect, x:CGFloat)->CGRect{
        return CGRectMake(x, rect.origin.y, rect.size.width, rect.size.height)
    }
    //私有 y
    func rectSetY(rect:CGRect, y:CGFloat)->CGRect {
        return CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height);
    }
    //私有width
    func rectSetWidth(rect:CGRect, width:CGFloat)->CGRect {
        return CGRectMake(rect.origin.x, rect.origin.y, width, rect.size.height);
    }
    //私有height
    func rectSetHeight(rect:CGRect, height:CGFloat)->CGRect {
        return CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, height);
    }
    //私有origin
    func rectSetOrigin(rect:CGRect, origin:CGPoint)->CGRect {
        return CGRectMake(origin.x, origin.y, rect.size.width, rect.size.height);
    }
    //私有size
    func rectSetSize( rect:CGRect,  size:CGSize)->CGRect {
        return CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height);
    }
}

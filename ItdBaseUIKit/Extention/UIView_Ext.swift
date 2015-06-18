//
//  ItdView.swift
//  IOS_ItdFoundation
//
//  Created by WangSen on 15-2-26.
//  Copyright (c) 2015年 WangSen. All rights reserved.
//

import UIKit

extension UIView {
    /////////////
    /**
    *  获得 frame的 x 的值
    *
    *  @return 获得 frame的 x 的值
    */
    public func x()->CGFloat{
        return self.frame.origin.x
    }
    
    /**
    *  获得 frame的 y 的值
    *
    *  @return 获得 frame的 y 的值
    */
    public func y()->CGFloat{
        return self.frame.origin.y
    }
    
    //获得bottom
    /**
    *  获得 frame的 width 的值
    *
    *  @return 获得 frame的 width 的值
    */
    public func width()->CGFloat{
        return self.frame.size.width
    }
    /**
    *  获得 frame的 height 的值
    *
    *  @return 获得 frame的 height 的值
    */
    public func height()->CGFloat{
        return self.frame.size.height
    }
    /**
    *  获得 frame的 origin 的值
    *
    *  @return 获得 frame的 origin 的值
    */
    public func origin()->CGPoint{
        return self.frame.origin
    }
    /**
    *  获得 frame的 size 的值
    *
    *  @return 获得 frame的 size 的值
    */
    public func size()->CGSize{
        return self.frame.size
    }
    
    
    //左边x坐标
    public func left_x()->CGFloat{
        return x()
    }
    //右边x坐标
    func right_x()->CGFloat{
        return x() + width()
    }
    //顶部y坐标
    public func top_y()->CGFloat{
        return y()
    }
    //底部y坐标
    public func bottom_y()->CGFloat{
        return y() + height()
    }
    
    //距离父窗口左边距离
    public func left_margin()->CGFloat{
        return x()
    }
    //距离父窗口顶部距离
    public func top_margin()->CGFloat{
        return y()
    }
    //距离父窗口右边距离
    public func right_margin()->CGFloat{
        if (self.superview != nil){
           return self.superview!.width() - right_x()
        }
        return 0
    }
    //距离父窗口底部距离
    public func bottom_margin()->CGFloat{
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
    public func setX(x:CGFloat)->Void{
        self.frame = rectSetX(self.frame, x: x)
    }
    
    /**
    *  设置视图的 y
    *
    *  @param y 新的frame的 y 的值
    */
    public func setY(y:CGFloat)->Void{
        self.frame = rectSetY(self.frame, y: y)
    }
    /**
    *  设置视图的 width
    *
    *  @param width 新的frame的 width 的值
    */
    public func setWidth(width:CGFloat)->Void{
        self.frame = rectSetWidth(self.frame, width: width)
    }
    /**
    *  设置视图的 height
    *
    *  @param height 新的frame的 height 的值
    */
    public func setHeight(height:CGFloat)->Void
    {
        self.frame = rectSetHeight(self.frame, height: height)
    }
    /**
    *  设置视图的 origin
    *
    *  @param origin 新的frame的 origin 的值
    */
    public func setOrigin(origin:CGPoint)->Void
    {
        self.frame = rectSetOrigin(self.frame, origin: origin)
    }
    /**
    *  设置视图的 size
    *
    *  @param size 新的frame的 size 的值
    */
    public func setSize(size:CGSize)->Void{
        self.frame = rectSetSize(self.frame, size: size)
    }
    //设置距离左边距离
    public func setLeft_margin(left:CGFloat)->Void{
        setX(left)
    }
    //设置顶部距离
    public func setTop_margin(top:CGFloat)->Void{
        setY(top)
    }
    //设置距离右边距离
    public func setRight_margin(right_margin:CGFloat)->Void{
        
        if(self.superview == nil){
            return
        }
        
        self.setWidth(self.superview!.width() - self.left_x() - right_margin)
    }
    //设置距离底部距离
    public func setBottom_margin(bottom_margin:CGFloat)->Void{
        
        if(self.superview == nil){
            return
        }
        
        self.setHeight(self.superview!.height() - self.top_y() - bottom_margin)
    }
    
    //
    public func positionUnderView(view:UIView, padding:CGFloat)->(Void){
        self.frame = view.frame
        self.setY(view.y() + view.height() + padding)
    }
    
    //获取view所在的viewController
    public func viewController()->UIViewController?{
        if var next:UIView = self.superview{
            do{
                if var nextResponder:UIResponder = next.nextResponder()
                {
                    if(nextResponder.isKindOfClass(UIViewController))
                    {
                        return nextResponder as? UIViewController
                    }
                }
            }while(self.superview != nil)
        }
        return nil
    }
    
    //将视图变成圆形
    public func itd_becomeCircleView()->Void{
        self.layer.cornerRadius = self.height()/2.0
        self.layer.masksToBounds = true
    }
    
    //获取父类为给定类型的父窗口
    public func itd_superView_ofSuperClassType(aClass:AnyClass)->UIView?{
        if var spView = self.superview{
            if (spView.isKindOfClass(aClass)){
                return spView
            }else{
                return spView.itd_superView_ofSuperClassType(aClass)
            }
        }else{
            return nil
        }
    }
    
    
    //私有 x
    private func rectSetX(rect:CGRect, x:CGFloat)->CGRect{
        return CGRectMake(x, rect.origin.y, rect.size.width, rect.size.height)
    }
    //私有 y
    private func rectSetY(rect:CGRect, y:CGFloat)->CGRect {
        return CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height);
    }
    //私有width
    private func rectSetWidth(rect:CGRect, width:CGFloat)->CGRect {
        return CGRectMake(rect.origin.x, rect.origin.y, width, rect.size.height);
    }
    //私有height
    private func rectSetHeight(rect:CGRect, height:CGFloat)->CGRect {
        return CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, height);
    }
    //私有origin
    private func rectSetOrigin(rect:CGRect, origin:CGPoint)->CGRect {
        return CGRectMake(origin.x, origin.y, rect.size.width, rect.size.height);
    }
    //私有size
    private func rectSetSize( rect:CGRect,  size:CGSize)->CGRect {
        return CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height);
    }
}

//
//  FirstViewController.swift
//  IOS_ItdFoundation
//
//  Created by WangSen on 15-2-26.
//  Copyright (c) 2015年 WangSen. All rights reserved.
//

import UIKit
class FirstViewController: ItdViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        var view:UIView = UIView(frame: CGRectMake(10, 100, 30, 30))
        view.backgroundColor = UIColor.itd_colorWithHexInteger(0xff0000, alpha: 0.5)
        self.view.addSubview(view)
        
        var textField:UITextField = UITextField(frame: CGRectMake(50, 100, 90, 30));
        textField.backgroundColor = UIColor.redColor()
        textField.itd_limitTextLength(4)
        self.view.addSubview(textField)
        
        
        var btn:UIButton = UIButton(frame: CGRectMake(textField.right_x() + 5, textField.top_y(), 50, 30))
        btn.setTitle("按钮", forState: UIControlState.Normal)
        btn.itd_clickDoBlock({ () -> () in
            btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            self.view.backgroundColor = UIColor.purpleColor()
        })
        self.view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


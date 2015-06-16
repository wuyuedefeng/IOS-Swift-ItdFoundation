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
        
        var view:UIView = UIView(frame: CGRectMake(100, 100, 100, 100))
        view.backgroundColor = UIColor.itd_colorWithHexInteger(0xff0000, alpha: 0.5)
        self.view.addSubview(view)
        
        var textField:UITextField = UITextField(frame: CGRectMake(10, 250, 150, 50));
        textField.backgroundColor = UIColor.redColor()
        textField.itd_limitTextLength(10)
        self.view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


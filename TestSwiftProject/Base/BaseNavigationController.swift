//
//  BaseNavigationController.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/20.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.Custom.backgroundColor
        // 干掉导航栏底部的线条
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
    }
}

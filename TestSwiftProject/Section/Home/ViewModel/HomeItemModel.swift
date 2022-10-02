//
//  HomeItemModel.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class HomeItemModel: NSObject {
    enum HomeItemType {
        case Calling
        case Message
        case LowPower
        case Unknown
    }
    var title: String = ""
    var backgroundColor: UIColor = UIColor.Custom.grey5
    var iconName: String = ""
    var type: HomeItemType = .Unknown
}

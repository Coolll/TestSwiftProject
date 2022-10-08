//
//  WLInputModel.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit
enum WLInputType {
    case normal
    case phoneNumber
}
class WLInputModel: NSObject {
    var iconName: String = ""
    var title: String = ""
    var placeHolderStr: String = ""
    var inputContent: String = ""
    var inputType: WLInputType = .normal
}

//
//  WLCallingViewModel.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/23.
//

import UIKit

class WLCallingViewModel: NSObject {

    func configureItems() -> [WLInputModel] {
        var items: [WLInputModel] = []
        
        let phoneItem = WLInputModel.init()
        phoneItem.title = String.globalString("")
        return items
    }
}

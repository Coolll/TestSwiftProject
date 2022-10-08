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
        phoneItem.title = String.globalString("calling_item_phone")
        phoneItem.iconName = "calling_phone_number"
        phoneItem.inputType = .phoneNumber
        phoneItem.placeHolderStr = String.globalString("calling_item_phone_placeholder")
        items.append(phoneItem)
        
        let nicknameItem = WLInputModel.init()
        nicknameItem.title = String.globalString("calling_item_nickname")
        nicknameItem.iconName = "calling_nickname"
        nicknameItem.placeHolderStr = String.globalString("calling_item_nickname_placeholder")
        items.append(nicknameItem)

        let groupItem = WLInputModel.init()
        groupItem.title = String.globalString("calling_item_group")
        groupItem.iconName = "calling_group"
        groupItem.placeHolderStr = String.globalString("calling_item_group_placeholder")
        items.append(groupItem)
        
        let addressItem = WLInputModel.init()
        addressItem.title = String.globalString("calling_item_address")
        addressItem.iconName = "calling_from"
        addressItem.placeHolderStr = String.globalString("calling_item_address_placeholder")
        items.append(addressItem)
        
        return items
    }
}

//
//  HomeViewModel.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit

class HomeViewModel: NSObject {
    func loadHomeItems() -> [HomeItemModel] {
        var homeItems: [HomeItemModel] = []
        let callingItem = HomeItemModel.init()
        callingItem.title = String.globalString("mock_calling")
        callingItem.backgroundColor = UIColor.customColor("122,124,45")
        callingItem.iconName = "home_mock_calling"
        callingItem.type = .Calling
        homeItems.append(callingItem)
        
        let messageItem = HomeItemModel.init()
        messageItem.title = String.globalString("mock_message")
        messageItem.backgroundColor = UIColor.customColor("122,224,145")
        messageItem.iconName = "home_mock_message"
        messageItem.type = .Message
        homeItems.append(messageItem)

        let lowPowerItem = HomeItemModel.init()
        lowPowerItem.title = String.globalString("mock_low_power")
        lowPowerItem.backgroundColor = UIColor.customColor("22,224,145")
        lowPowerItem.iconName = "home_mock_low_power"
        lowPowerItem.type = .LowPower
        homeItems.append(lowPowerItem)

        
        return homeItems
    }
}

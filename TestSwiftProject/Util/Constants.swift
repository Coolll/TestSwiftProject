//
//  Constants.swift
//  treelab
//
//  Created by xz on 2021/7/8.
//

import Foundation
import UIKit

public struct Constants {
    static var ScreenWidth = UIScreen.main.bounds.width
    static var ScreenHeight = UIScreen.main.bounds.height

    static let isChinese: Bool = isChineseLanguage()
    
    static var isInDebugMode: Bool {
      #if DEBUG
        return true
      #else
        return false
      #endif
    }
    
    static let KeyWindow = UIApplication.shared.connectedScenes
        .compactMap { $0 as? UIWindowScene }
        .flatMap { $0.windows }
        .first(where: { $0.isKeyWindow })
    
}

public func endEditing() {
    Constants.KeyWindow?.endEditing(true)
}





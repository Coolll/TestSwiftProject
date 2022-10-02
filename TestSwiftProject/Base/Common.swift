//
//  Common.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/20.
//

import Foundation
import UIKit

public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    #if DEBUG
        guard let object = object else { return }
        print("***** \(Date()) \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    #endif
}


public func isChineseLanguage() -> Bool {
    let userDefault = UserDefaults.standard
    let allLanguages: [String] = userDefault.object(forKey: "AppLanguages") as? [String] ?? []
    let lan = allLanguages.first
    return lan?.starts(with: "zh") ?? true
}

public func publicCurrentModeColor() -> UIColor {
    let userDefault = UserDefaults.standard
    let curMode: String = userDefault.object(forKey: "AppCurrentModeString") as? String ?? "default"
    if curMode == "blue" {
        return UIColor.init(red: 0.3, green: 0.4, blue: 0.7, alpha: 0.8)
    }
    return UIColor.init(red: 0.4, green: 0.3, blue: 0.9, alpha: 0.8)


}

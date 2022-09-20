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

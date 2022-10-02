//
//  WLString.swift
//  TestSwiftProject
//
//  Created by 龙培 on 2022/9/22.
//

import UIKit
extension String {
    static func globalString(_ key: String, tableName: String? = "Localizable", value: String? = "") -> String {
       return NSLocalizedString(key, tableName: tableName ?? "Localizable", bundle: Bundle.main, value: value ?? "", comment: "")
    }
}

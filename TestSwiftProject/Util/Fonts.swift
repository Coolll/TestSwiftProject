//
//  Fonts.swift
//  treelab
//
//  Created by xz on 2021/7/8.
//

import Foundation

import UIKit

extension UIFont {
    struct Custom {
        // 超大标题、数字
        static let hExtra_regular = UIFont.systemFont(ofSize: 37, weight: UIFont.Weight.regular)
        static let hExtra_medium = UIFont.systemFont(ofSize: 37, weight: UIFont.Weight.medium)
        
        // 大标题、数字
        static let hl_regular = UIFont.systemFont(ofSize: 32, weight: UIFont.Weight.regular)
        static let hl_medium = UIFont.systemFont(ofSize: 32, weight: UIFont.Weight.medium)
        
        // emoji
        static let emoji_regular = UIFont.systemFont(ofSize: 32, weight: UIFont.Weight.medium)
        static let emoji_small = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.medium)

        // 大标题、数字
        static let h0_regular = UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.regular)
        static let h0_medium = UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.medium)

        // 导航、列标题文案、大按钮
        static let h1_regular = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.regular)
        static let h1_medium = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)

        // 中等标题、正文
        static let h2_regular = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.regular)
        static let h2_medium = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.medium)

        // 中等文字、按钮
        static let h3_regular = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        static let h3_medium = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)

        // 小标题、补充说明
        static let h4_regular = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        static let h4_medium = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.medium)

        // 小文字按钮、标签、备注
        static let h5_regular = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        static let h5_medium = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.medium)

        // 圆角按钮
        static let h6_regular = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.regular)
        static let h6_medium = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.medium)

        // 小标题
        static let h7_regular = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        static let h7_medium = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.medium)

        // 小标签
        static let h8_regular = UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.regular)
        static let h8_medium = UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.medium)

        // 小标签
        static let h9_regular = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.regular)
        static let h9_medium = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.medium)
    }

    struct Button {
        static let big = Custom.h1_medium
        static let normal = Custom.h3_medium
        static let small = Custom.h5_medium
    }

    struct Text {
        static let desc = Custom.h4_medium
        static let tips = Custom.h5_medium
        static let tag = Custom.h5_medium
    }
}

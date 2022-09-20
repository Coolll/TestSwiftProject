//
//  UIColorExtensions.swift
//  SwifterSwift
//
//  Created by Max Haertwig on 10/06/19.
//  Copyright © 2019 SwifterSwift
//

#if canImport(UIKit)
import UIKit

public extension UIColor {
    #if !os(watchOS)
    /// SwifterSwift: Create a UIColor with different colors for light and dark mode.
    ///
    /// - Parameters:
    ///     - light: Color to use in light/unspecified mode.
    ///     - dark: Color to use in dark mode.
    @available(iOS 13.0, tvOS 13.0, *)
    convenience init(light: UIColor, dark: UIColor) {
        self.init(dynamicProvider: { $0.userInterfaceStyle == .dark ? dark : light })
    }
    #endif
    
    convenience init?(hex: String) {
        let r, g, b, a: CGFloat
        
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        if ((cString.count) == 6) {
            let scanner = Scanner(string: cString)
            var hexNumber: UInt64 = 0
            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                a = CGFloat(1.0)

                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        } else if ((cString.count) == 8) {
            let scanner = Scanner(string: cString)
            var hexNumber: UInt64 = 0

            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                a = CGFloat(hexNumber & 0x000000ff) / 255

                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        }
        return nil
    }
}

#endif

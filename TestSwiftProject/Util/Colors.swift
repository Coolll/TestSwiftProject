//
//  Colors.swift
//  treelab
//
//  Created by xz on 2021/7/8.
//

import UIKit

extension UIColor {
    struct Custom {
        // grey
        static let grey0  = UIColor(hex: 0x282A34)!
        static let grey1  = UIColor(hex: 0x71747C)!
        static let grey2  = UIColor(hex: 0xA7A8AF)!
        static let grey3  = UIColor(hex: 0xC9C9CD)!
        static let grey4  = UIColor(hex: 0xE5E5E8)!
        static let grey5  = UIColor(hex: 0xF6F6F6)!
        static let grey6  = UIColor(hex: 0xFFFFFF)!
        static let grey6_opercity50  = UIColor(hex: 0xFFFFFF, transparency: 0.5)!
        static let grey6_opercity25  = UIColor(hex: 0xFFFFFF, transparency: 0.25)!
        static let grey6_opercity75  = UIColor(hex: 0xFFFFFF, transparency: 0.75)!
        static let grey5_opercity15  = UIColor(hex: 0x000000, transparency: 0.015)!
        static let grey5_opercity8  = UIColor(hex: 0x000000, transparency: 0.08)!
        static let grey0_opercity75  = UIColor(hex: 0x282A34, transparency: 0.75)!
        static let grey = UIColor(hex: 0x83868F)!
        static let grey_dark1 = UIColor(hex: 0x292D3D)!
        static let grey_light1  = UIColor(hex: 0xB0B1B7)!
        static let grey_light2  = UIColor(hex: 0xE1E2E6)!
        static let grey_light3  = UIColor(hex: 0x292D3D, transparency: 0.1)!
        static let grey_light4  = UIColor(hex: 0x292D3D, transparency: 0.06)!
        static let grey_light5  = UIColor(hex: 0xF7F7F7, transparency: 1)!

        // black
        static let black = UIColor(hex: 0x000000)!
        static let black_opercity85  = UIColor(hex: 0x000000, transparency: 0.85)!
        static let black_opercity75  = UIColor(hex: 0x000000, transparency: 0.75)!
        static let black_opercity50  = UIColor(hex: 0x000000, transparency: 0.5)!
        static let black_opercity25  = UIColor(hex: 0x000000, transparency: 0.25)!
        static let black_opercity5 = UIColor(hex: 0x000000, transparency: 0.05)!
        static let black_light_opacity12  = UIColor(hex: 0x0D1436, transparency: 0.12)!
        static let black_light_opacity10  = UIColor(hex: 0x292D3D, transparency: 0.1)!
        static let black_light_opacity06  = UIColor(hex: 0x292D3D, transparency: 0.06)!

        // blue
        static let blue_dark1   = UIColor(hex: 0x5275E5)!
        static let blue         = UIColor(hex: 0x577EFF)!
        static let blue_light1  = UIColor(hex: 0xADBEFF)!
        static let blue_light2  = UIColor(hex: 0xDCE3FF)!
        static let blue_light3  = UIColor(hex: 0xEDF1FF)!
        static let blue_08mask  = UIColor(hex: 0x575EFF, transparency: 0.08)!
        static let blue_16mask  = UIColor(hex: 0x577EFF, transparency: 0.16)!
        static let blue_opacity10 = UIColor(hex: 0x577EFF, transparency: 0.1)!
        static let blue_opacity20 = UIColor(hex: 0x577EFF, transparency: 0.2)!

        // peacock
        static let peacock_dark1   = UIColor(hex: 0x2D94B7)!
        static let peacock         = UIColor(hex: 0x42C8F5)!
        static let peacock_light2  = UIColor(hex: 0xDBF4FF)!
        static let peacock_mask = UIColor(hex: 0x4FBBE0, transparency: 0.12)!

        // tiffany
        static let tiffany_dark1   = UIColor(hex: 0x239582)!
        static let tiffany         = UIColor(hex: 0x33D2B8)!
        static let tiffany_light2  = UIColor(hex: 0xD6F4EF)!
        static let tiffany_mask = UIColor(hex: 0x4CBFAC, transparency: 0.12)!

        // green
        static let green_dark1   = UIColor(hex: 0x2A9E5D)!
        static let green         = UIColor(hex: 0x29D573)!
        static let green_light2  = UIColor(hex: 0xCFFAE3)!
        static let green_mask = UIColor(hex: 0x45CB7F, transparency: 0.08)!

        // yellow
        static let yellow_dark1   = UIColor(hex: 0xB18332)!
        static let yellow_dirty   = UIColor(hex: 0xDBA549)!
        static let yellow         = UIColor(hex: 0xFFC561)!
        static let yellow_light2  = UIColor(hex: 0xFEECC2)!
        static let yellow_mask = UIColor(hex: 0x45CB7F, transparency: 0.08)!
        static let yellow_backgroud = UIColor(hex: 0xFFC561, transparency: 0.12)!

        // orange
        static let orange_dark1   = UIColor(hex: 0xCF6936)!
        static let orange         = UIColor(hex: 0xFF8E56)!
        static let orange_light2  = UIColor(hex: 0xFFE0CE)!

        // red
        static let red_dark1   = UIColor(hex: 0xE74046)!
        static let red         = UIColor(hex: 0xFF6065)!
        static let red_light1  = UIColor(hex: 0xFF9CA0)!
        static let red_light2  = UIColor(hex: 0xFFDDDD)!
        static let red_mask = UIColor(hex: 0x45CB7F, transparency: 0.08)!

        // pink
        static let pink_dark1   = UIColor(hex: 0xDE4381)!
        static let pink         = UIColor(hex: 0xFF5B9D)!
        static let pink_light2  = UIColor(hex: 0xFFDAEB)!

        // purple
        static let purple_dark1   = UIColor(hex: 0x9E50D9)!
        static let purple         = UIColor(hex: 0xB75BFF)!
        static let purple_light2  = UIColor(hex: 0xF1DEFF)!

        // bluishViolet
        static let bluishViolet_dark1   = UIColor(hex: 0x6B5AEB)!
        static let bluishViolet         = UIColor(hex: 0x8170FF)!
        static let bluishViolet_light2  = UIColor(hex: 0xE2DEFF)!
        static let bluishViolet_mask = UIColor(hex: 0x857FEF, transparency: 0.12)!

        // grass
        static let grass_dark1   = UIColor(hex: 0x609932)!
        static let grass         = UIColor(hex: 0x95D165)!
        static let grass_light2  = UIColor(hex: 0xD9F1C5)!

        // carmine
        static let carmine_dark1   = UIColor(hex: 0xDE43BC)!
        static let carmine         = UIColor(hex: 0xFF60DC)!
        static let carmine_light2  = UIColor(hex: 0xFFDAF7)!

        // sky
        static let sky_dark1   = UIColor(hex: 0x3584D2)!
        static let sky         = UIColor(hex: 0x52A8FF)!
        static let sky_light2  = UIColor(hex: 0xD0E8FF)!

        // default color
        static let backgroundColor = grey6
    }
    
    static func customColor(_ fromString: String?) -> UIColor {
        if fromString?.isEmpty == true {
            return Custom.grey6
        }
        if let colorString = fromString {
            if colorString.contains(",") {
                let colorArray = colorString.components(separatedBy: ",")
                if colorArray.count == 3 {
                    let redString = colorArray[0]
                    let greenString = colorArray[1]
                    let blueString = colorArray[2]
                    let redValue: Int = Int(NSString.init(string: redString).intValue)
                    let greenValue: Int = Int(NSString.init(string: greenString).intValue)
                    let blueValue: Int = Int(NSString.init(string: blueString).intValue)
                    
                    return UIColor.init(red: CGFloat(redValue)/255.0, green: CGFloat(greenValue)/255.0, blue: CGFloat(blueValue)/255.0, alpha: 1.0)
                }
            }
        }
        return Custom.grey6
    }
}

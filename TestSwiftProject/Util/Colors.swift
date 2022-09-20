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

        static let chipsDarkModelColor = [
            (tagColor:tiffany, titleColor:grey6, iconColor:tiffany_light2, lineColor:tiffany),
            (tagColor:blue, titleColor:grey6, iconColor:blue_light2, lineColor:blue),
            (tagColor:red, titleColor:grey6, iconColor:red_light2, lineColor:red),
            (tagColor:orange, titleColor:grey6, iconColor:orange_light2, lineColor:orange),
            (tagColor:yellow, titleColor:grey6, iconColor:yellow_light2, lineColor:yellow),
            (tagColor:green, titleColor:grey6, iconColor:green_light2, lineColor:green),
            (tagColor:peacock, titleColor:grey6, iconColor:peacock_light2, lineColor:peacock),
            (tagColor:bluishViolet, titleColor:grey6, iconColor:bluishViolet_light2, lineColor:bluishViolet),
            (tagColor:purple, titleColor:grey6, iconColor:purple_light2, lineColor:purple),
            (tagColor:pink, titleColor:grey6, iconColor:pink_light2, lineColor:pink),
            (tagColor:grass, titleColor:grey6, iconColor:grass_light2, lineColor:grass),
            (tagColor:sky, titleColor:grey6, iconColor:sky_light2, lineColor:sky),
            (tagColor:carmine, titleColor:grey6, iconColor:carmine_light2, lineColor:carmine)
        ]
        static let chipsLightModeColor = [
            (tagColor:tiffany_light2, titleColor:tiffany_dark1, iconColor:tiffany_dark1, lineColor:grey6),
            (tagColor:blue_light2, titleColor:blue_dark1, iconColor:blue_dark1, lineColor:grey6),
            (tagColor:red_light2, titleColor:red_dark1, iconColor:red_dark1, lineColor:grey6),
            (tagColor:orange_light2, titleColor:orange_dark1, iconColor:orange_dark1, lineColor:grey6),
            (tagColor:yellow_light2, titleColor:yellow_dark1, iconColor:yellow_dark1, lineColor:grey6),
            (tagColor:green_light2, titleColor:green_dark1, iconColor:green_dark1, lineColor:grey6),
            (tagColor:peacock_light2, titleColor:peacock_dark1, iconColor:peacock_dark1, lineColor:grey6),
            (tagColor:bluishViolet_light2, titleColor:bluishViolet_dark1, iconColor:bluishViolet_dark1, lineColor:grey6),
            (tagColor:purple_light2, titleColor:purple_dark1, iconColor:purple_dark1, lineColor:grey6),
            (tagColor:pink_light2, titleColor:pink_dark1, iconColor:pink_dark1, lineColor:grey6),
            (tagColor:grass_light2, titleColor:grass_dark1, iconColor:grass_dark1, lineColor:grey6),
            (tagColor:sky_light2, titleColor:sky_dark1, iconColor:sky_dark1, lineColor:grey6),
            (tagColor:carmine_light2, titleColor:carmine_dark1, iconColor:carmine_dark1, lineColor:grey6)
        ]

        static let chipsColor = chipsDarkModelColor + chipsLightModeColor

        // default color
        static let backgroundColor = grey6

        static let colorMap = [
            "blueDarkest": blue,
            "skyDarkest": sky,
            "peacockDarkest": peacock,
            "tiffanyDarkest": tiffany,
            "greenDarkest": green,
            "grassDarkest": grass,
            "yellowDarkest": yellow,
            "orangeDarkest": orange,
            "redDarkest": red,
            "pinkDarkest": pink,
            "carmineDarkest": carmine,
            "purpleDarkest": purple,
            "bluishVioletDarkest": bluishViolet,
            "greyDarkest": grey,
            "blackDarkest": grey_dark1,

            "blueLightest": blue_light2,
            "skyLightest": sky_light2,
            "peacockLightest": peacock_light2,
            "tiffanyLightest": tiffany_light2,
            "greenLightest": green_light2,
            "grassLightest": grass_light2,
            "yellowLightest": yellow_light2,
            "orangeLightest": orange_light2,
            "redLightest": red_light2,
            "pinkLightest": pink_light2,
            "carmineLightest": carmine_light2,
            "purpleLightest": purple_light2,
            "bluishVioletLightest": bluishViolet_light2,
            "greyLightest": grey_light4,
            "blackLightest": grey_light2
        ]

        // 待办相关颜色映射
        static let taskStatusColorMap = [
            "blueDarkest": blue,
            "skyDarkest": sky,
            "peacockDarkest": peacock,
            "tiffanyDarkest": tiffany,
            "greenDarkest": green,
            "grassDarkest": grass,
            "yellowDarkest": yellow,
            "orangeDarkest": orange,
            "redDarkest": red,
            "pinkDarkest": pink,
            "carmineDarkest": carmine,
            "purpleDarkest": purple,
            "bluishVioletDarkest": bluishViolet,
            "greyDarkest": grey,
            "zx": grey_dark1,

            "blueLightest": blue_light2,
            "skyLightest": sky_light2,
            "peacockLightest": peacock_light2,
            "tiffanyLightest": tiffany_light2,
            "greenLightest": green_light2,
            "grassLightest": grass_light2,
            "yellowLightest": yellow_light2,
            "orangeLightest": orange_light2,
            "redLightest": red_light2,
            "pinkLightest": pink_light2,
            "carmineLightest": carmine_light2,
            "purpleLightest": purple_light2,
            "bluishVioletLightest": bluishViolet_light2,
            "greyLightest": grey_light4,
            "blackLightest": grey_light2
        ]

        static let colorForTextMap = [
            "blueDarkest": grey6,
            "skyDarkest": grey6,
            "peacockDarkest": grey6,
            "tiffanyDarkest": grey6,
            "greenDarkest": grey6,
            "grassDarkest": grey6,
            "yellowDarkest": grey6,
            "orangeDarkest": grey6,
            "redDarkest": grey6,
            "pinkDarkest": grey6,
            "carmineDarkest": grey6,
            "purpleDarkest": grey6,
            "bluishVioletDarkest": grey6,
            "greyDarkest": grey6,
            "blackDarkest": grey6,

            "blueLightest": blue_dark1,
            "skyLightest": sky_dark1,
            "peacockLightest": peacock_dark1,
            "tiffanyLightest": tiffany_dark1,
            "greenLightest": green_dark1,
            "grassLightest": grass_dark1,
            "yellowLightest": yellow_dark1,
            "orangeLightest": orange_dark1,
            "redLightest": red_dark1,
            "pinkLightest": pink_dark1,
            "carmineLightest": carmine_dark1,
            "purpleLightest": purple_dark1,
            "bluishVioletLightest": bluishViolet_dark1,
            "greyLightest": grey,
            "blackLightest": grey_dark1
        ]
    }

    static func customColor(_ fromString: String?) -> UIColor {
        guard let color = Custom.colorMap[fromString ?? ""] else {
            return Custom.blue
        }
        return color
    }

    static func customTaskStausColor(_ fromString: String?) -> UIColor {
        guard let color = Custom.taskStatusColorMap[fromString ?? ""] else {
            return .black
        }
        return color
    }

    static func customTextColorWithBgColor(_ fromString: String?) -> UIColor {
        guard let color = Custom.colorForTextMap[fromString ?? ""] else {
            return .white
        }
        return color
    }
}

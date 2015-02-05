//  Color.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import Foundation
import UIKit

extension UIColor {
    
    convenience init(rgba: String) {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        if rgba.hasPrefix("#") {
            let index   = advance(rgba.startIndex, 1)
            let hex     = rgba.substringFromIndex(index)
            let scanner = NSScanner(string: hex)
            var hexValue: CUnsignedLongLong = 0
            if scanner.scanHexLongLong(&hexValue) {
                switch (countElements(hex)) {
                case 3:
                    red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                    green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                    blue  = CGFloat(hexValue & 0x00F)              / 15.0
                case 4:
                    red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                    green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                    blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                    alpha = CGFloat(hexValue & 0x000F)             / 15.0
                case 6:
                    red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
                case 8:
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 100.0
                default:
                    print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
                }
            } else {
                println("Scan hex error")
            }
        } else {
            print("Invalid RGB string, missing '#' as prefix")
        }
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    struct Flat {
        static let red = UIColor(rgba: "#E74C3C")
        static let darkRed = UIColor(rgba: "#C0392C")
        static let orange = UIColor(rgba: "#E67E21")
        static let darkOrange = UIColor(rgba: "#D35400")
        static let yellow = UIColor(rgba: "#FFCD01")
        static let darkYellow = UIColor(rgba: "#FFA801")
        static let sand = UIColor(rgba: "#F0DEB4")
        static let darkSand = UIColor(rgba: "#D5C295")
        static let navy = UIColor(rgba: "#34495E")
        static let darkNavy = UIColor(rgba: "#2C3E50")
        static let black = UIColor(rgba: "#2B2B2B")
        static let darkBlack = UIColor(rgba: "#262626")
        static let magenta = UIColor(rgba: "#9B59B6")
        static let darkMagenta = UIColor(rgba: "#8E44AD")
        static let teal = UIColor(rgba: "#3A6F81")
        static let darkTeal = UIColor(rgba: "#356272")
        static let sky = UIColor(rgba: "#3498DB")
        static let darkSky = UIColor(rgba: "#2980B9")
        static let green = UIColor(rgba: "#2ECC71")
        static let darkGreen = UIColor(rgba: "#27AE60")
        static let mint = UIColor(rgba: "#1ABC9C")
        static let darkMint = UIColor(rgba: "#17A085")
        static let white = UIColor(rgba: "#ECF0F1")
        static let darkWhite = UIColor(rgba: "#BDC3C7")
        static let gray = UIColor(rgba: "#95A5A6")
        static let darkGray = UIColor(rgba: "#C0392C")
        static let forest = UIColor(rgba: "#355F41")
        static let darkForest = UIColor(rgba: "#2D5036")
        static let purple = UIColor(rgba: "#745EC5")
        static let darkPurple = UIColor(rgba: "#5B48A2")
        static let brown = UIColor(rgba: "#5E4534")
        static let darkBrown = UIColor(rgba: "#503B2C")
        static let plum = UIColor(rgba: "#5E345E")
        static let darkPlum = UIColor(rgba: "#4F2B4F")
        static let watermelon = UIColor(rgba: "#EF717A")
        static let darkWatermelon = UIColor(rgba: "#D95459")
        static let lime = UIColor(rgba: "#A5C63B")
        static let darkLime = UIColor(rgba: "#8EB021")
        static let pink = UIColor(rgba: "#F47BC3")
        static let darkPink = UIColor(rgba: "#D45C9E")
        static let maroon = UIColor(rgba: "#79302A")
        static let darkMaroon = UIColor(rgba: "#662621")
        static let coffee = UIColor(rgba: "#A38671")
        static let darkCoffee = UIColor(rgba: "#8E725E")
        static let powder = UIColor(rgba: "#B8C9F2")
        static let darkPowder = UIColor(rgba: "#99ABD5")
        static let blue = UIColor(rgba: "#5065A1")
        static let darkBlue = UIColor(rgba: "#394C81")
    }
    
    struct Material {
        static let red = UIColor(rgba: "#F44336")
        static let pink = UIColor(rgba: "#E91E63")
        static let purple = UIColor(rgba: "#9C27B0")
        static let deepPurple = UIColor(rgba: "#67AB7")
        static let indigo = UIColor(rgba: "#3F51B5")
        static let blue = UIColor(rgba: "#2196F3")
        static let lightBlue = UIColor(rgba: "#03A9F4")
        static let cyan = UIColor(rgba: "#00BCD4")
        static let teal = UIColor(rgba: "#009688")
        static let green = UIColor(rgba: "#4CAF50")
        static let lightGreen = UIColor(rgba: "#8BC34A")
        static let lime = UIColor(rgba: "#CDDC39")
        static let yellow = UIColor(rgba: "#FFEB3B")
        static let amber = UIColor(rgba: "#FFC107")
        static let orange = UIColor(rgba: "#FF9800")
        static let deepOrange = UIColor(rgba: "#FF5722")
        static let brown = UIColor(rgba: "#795548")
        static let grey = UIColor(rgba: "#9E9E9E")
        static let blueGrey = UIColor(rgba: "#607D8B")
    }


}


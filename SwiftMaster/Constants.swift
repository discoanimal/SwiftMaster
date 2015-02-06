//  Constants.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import Foundation
import UIKit

// General
let origin = CGPoint(x: 0.0, y: 0.0)
let screenSize: CGRect = UIScreen.mainScreen().bounds
let screenRect = screenSize
let screenWidth = screenSize.width
let screenHeight = screenSize.height

// Navigation Bar
let navHeight = CGFloat(64.0)
let navSize = CGSize(width: screenWidth, height: navHeight)
let navRect = CGRectMake(origin.x, origin.y, navSize.width, navSize.height)

// Fonts
let lightFont = UIFont (name: "HelveticaNeue-UltraLight", size: 20)
let midFont = UIFont (name: "Avenir-Medium", size: 20)
let boldFont = UIFont (name: "AvenirNext-Bold", size: 20)
let iconFont = UIFont(name: "FontAwesome", size: 90)
let gFont = UIFont(name: GoogleIconName, size: 100.0)
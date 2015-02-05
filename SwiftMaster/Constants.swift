//
//  Constants.swift
//  SwiftMaster
//
//  Created by Justin Lynch on 2/5/15.
//  Copyright (c) 2015 jlynch.co. All rights reserved.
//

import Foundation
import UIKit

let screenSize: CGRect = UIScreen.mainScreen().bounds
let screenRect = screenSize
let screenWidth = screenSize.width
let screenHeight = screenSize.height

let origin = CGPoint(x: 0.0, y: 0.0)
let navSize = CGSize(width: screenWidth, height: 64.0)
let navRect = CGRectMake(origin.x, origin.y, navSize.width, navSize.height)
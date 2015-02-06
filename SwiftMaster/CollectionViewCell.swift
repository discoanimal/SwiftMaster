//  CollectionViewCell.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let textLabel: UILabel!
    let imageView: UIImageView!
    let iconLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: frame.size.width, height: frame.size.height))
        contentView.addSubview(imageView)
        
        let textFrame = CGRect(x: 0.0, y: imageView.frame.size.height - frame.size.height / 3 , width: frame.size.width, height: frame.size.height / 3)
        textLabel = UILabel(frame: textFrame)
        textLabel.font = boldFont
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
        
        let iconFrame = CGRect(x: 0.0, y: 0.0, width: frame.size.width, height: frame.size.height)
        iconLabel = UILabel(frame: iconFrame)
        iconLabel.font = iconFont
        iconLabel.textAlignment = .Center
        contentView.addSubview(iconLabel)
        iconLabel.center = CGPointMake( frame.width / 2.0 , frame.height / 2.0)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

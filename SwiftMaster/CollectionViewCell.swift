//  CollectionViewCell.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let textLabel: UILabel!
    let imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: frame.size.width, height: frame.size.height))
//        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
        
        let textFrame = CGRect(x: 0.0, y: imageView.frame.size.height / 2 - frame.size.height / 4, width: frame.size.width, height: frame.size.height / 2)
        textLabel = UILabel(frame: textFrame)
        textLabel.font = boldFont
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

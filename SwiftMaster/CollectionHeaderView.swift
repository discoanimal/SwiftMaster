//  CollectionHeaderView.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class CollectionHeaderView: UICollectionReusableView {
    let label: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label = UILabel?()
        // imageView.contentMode = UIViewContentMode.ScaleAspectFit
        self.addSubview(label!)
    }
    
    required init(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
    }

    class var reuseIdentifier : String {
        return "collectionHeaderView"
    }
        
}

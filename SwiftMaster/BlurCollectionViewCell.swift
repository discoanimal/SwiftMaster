//
//  BlurCollectionViewCell.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class BlurCollectionViewCell: UICollectionViewCell {
    let textLabel: UILabel!
    let imageView: UIImageView!
    let iconLabel: UILabel!
    var lightBlurView: UIVisualEffectView!
    var blurEffect: UIBlurEffect!
    var vibrancyView: UIVisualEffectView!
    
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
        
        self.setBlurView(arc4random() % 3)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setBlurView(arc4random() % 3)
    }
    
    override func prepareForReuse() {
        lightBlurView = nil
        blurEffect = nil
        vibrancyView = nil
    }
    
    func setBlurView(num: UInt32) {
        
        if (num == 0) {
            blurEffect = UIBlurEffect(style: .Light)
        } else if (num == 1) {
            blurEffect = UIBlurEffect(style: .Dark)
        } else {
            blurEffect = UIBlurEffect(style: .ExtraLight)
        }
        
        lightBlurView = UIVisualEffectView(effect: blurEffect)
        lightBlurView.userInteractionEnabled = false
        lightBlurView.frame = CGRectMake(2.5, 0, 140, 140)
        self.contentView.addSubview(lightBlurView)
        
        vibrancyView = vibrancyEffectView(forBlurEffectView: lightBlurView)
        lightBlurView.contentView.addSubview(vibrancyView)
    }
    
    // Actually creates the desired blur effect
    func vibrancyEffectView(forBlurEffectView blurEffectView:UIVisualEffectView) -> UIVisualEffectView {
        
        var vibrancy = UIVibrancyEffect(forBlurEffect: blurEffectView.effect as UIBlurEffect)
        var vibrancyView = UIVisualEffectView(effect: vibrancy)
        
        vibrancyView.userInteractionEnabled = false
        vibrancyView.frame = blurEffectView.bounds
        vibrancyView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        return vibrancyView
    }

    
}

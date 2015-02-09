//
//  BlurredCollectionViewCell.swift

import UIKit

class BlurredCollectionViewCell: UICollectionViewCell {
    
    var lightBlurView: UIVisualEffectView!
    var blurEffect: UIBlurEffect!
    var vibrancyView: UIVisualEffectView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Randomly create a type of blur style
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
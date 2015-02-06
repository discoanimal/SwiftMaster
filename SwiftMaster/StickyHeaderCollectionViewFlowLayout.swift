//
//  StickyHeaderCollectionViewFlowLayout.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class StickyHeaderCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [AnyObject]? {
        
        var answer: [UICollectionViewLayoutAttributes] = super.layoutAttributesForElementsInRect(rect)! as [UICollectionViewLayoutAttributes]
        let contentOffset = collectionView!.contentOffset
        
        var missingSections = NSMutableIndexSet()
        
        for layoutAttributes in answer {
            if (layoutAttributes.representedElementCategory == .Cell) {
                if let indexPath = layoutAttributes.indexPath {
                    missingSections.addIndex(layoutAttributes.indexPath.section)
                }
            }
        }
        
        for layoutAttributes in answer {
            if let representedElementKind = layoutAttributes.representedElementKind {
                if representedElementKind == UICollectionElementKindSectionHeader {
                    if let indexPath = layoutAttributes.indexPath {
                        missingSections.removeIndex(indexPath.section)
                    }
                }
            }
        }
        
        missingSections.enumerateIndexesUsingBlock { idx, stop in
            let indexPath = NSIndexPath(forItem: 0, inSection: idx)
            if let layoutAttributes = self.layoutAttributesForSupplementaryViewOfKind(UICollectionElementKindSectionHeader, atIndexPath: indexPath) {
                answer.append(layoutAttributes)
            }
        }
        
        for layoutAttributes in answer {
            if let representedElementKind = layoutAttributes.representedElementKind {
                if representedElementKind == UICollectionElementKindSectionHeader {
                    let section = layoutAttributes.indexPath!.section
                    let numberOfItemsInSection = collectionView!.numberOfItemsInSection(section)
                    
                    let firstCellIndexPath = NSIndexPath(forItem: 0, inSection: section)!
                    let lastCellIndexPath = NSIndexPath(forItem: max(0, (numberOfItemsInSection - 1)), inSection: section)!
                    
                    
                    let (firstCellAttributes: UICollectionViewLayoutAttributes, lastCellAttributes: UICollectionViewLayoutAttributes) = {
                        if (self.collectionView!.numberOfItemsInSection(section) > 0) {
                            return (
                                self.layoutAttributesForItemAtIndexPath(firstCellIndexPath),
                                self.layoutAttributesForItemAtIndexPath(lastCellIndexPath))
                        } else {
                            return (
                                self.layoutAttributesForSupplementaryViewOfKind(UICollectionElementKindSectionHeader, atIndexPath: firstCellIndexPath),
                                self.layoutAttributesForSupplementaryViewOfKind(UICollectionElementKindSectionFooter, atIndexPath: lastCellIndexPath))
                        }
                        }()
                    
                    let headerHeight = CGRectGetHeight(layoutAttributes.frame)
                    var origin = layoutAttributes.frame.origin
                    
                    origin.y = min(max(contentOffset.y, (CGRectGetMinY(firstCellAttributes.frame) - headerHeight)), (CGRectGetMaxY(lastCellAttributes.frame) - headerHeight))
                    
                    layoutAttributes.zIndex = 1024
                    layoutAttributes.frame = CGRect(origin: origin, size: layoutAttributes.frame.size)
                }
            }
        }
        
        return answer
    }
    
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        return true
    }
    
}
//
//  CollectionViewCellForBox.swift
//  Demo
//
//  Created by mahima on 04/07/22.
//

import UIKit

class CollectionViewCellForBox: UICollectionViewCell {
   
    @IBOutlet var imgBox: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgBox.layer.borderWidth = 2
        imgBox.layer.borderColor = UIColor.darkGray.cgColor
    }
}

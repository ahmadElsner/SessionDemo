//
//  TblViewCell.swift
//  Demo
//
//  Created by Ahmad's MacMini on 23/06/22.
//

import UIKit

class TblViewCell: UITableViewCell {

    @IBOutlet var imgCell: UIImageView!
    @IBOutlet var stackCell: UIStackView!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgCell.layer.cornerRadius = imgCell.frame.size.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

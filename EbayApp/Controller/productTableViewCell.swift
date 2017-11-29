//
//  productTableViewCell.swift
//  EbayApp
//
//  Created by PACE on 11/22/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class productTableViewCell: UITableViewCell {

    @IBOutlet weak var title1lbl: UILabel!
    
    @IBOutlet weak var txtview1: UITextView!
    
    @IBOutlet weak var lbl1: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}



//
//  MyBidsTableViewCell.swift
//  EbayApp
//
//  Created by PACE on 11/28/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class MyBidsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var bibProdNameLbl: UILabel!
    
    @IBOutlet weak var bidAmountlbl: UILabel!
    
    @IBOutlet weak var topPriceLbl: UILabel!
    
    @IBOutlet weak var bidStatusLbl: UILabel!
    
    @IBOutlet weak var arrowLbl: UITextField!
    
    @IBOutlet weak var imageLbl: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

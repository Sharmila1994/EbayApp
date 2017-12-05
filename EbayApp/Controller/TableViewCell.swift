//
//  TableViewCell.swift
//  Auction
//
//  Created by Mobile_Pace on 21/11/17.
//  Copyright © 2017 Mobile_Pace. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
    // @IBOutlet weak var imgImage: UIImageView!
    
    @IBOutlet weak var ProdImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var BidPriceLbl: UILabel!
    // var selectedsegment = 0
    
    @IBOutlet weak var ExpiryTimeLbl: UILabel!
    
    @IBOutlet weak var UserIdLbl: UILabel!
    
    
    
    
    
    
    
    @IBAction func PlaceAbidLbl(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}



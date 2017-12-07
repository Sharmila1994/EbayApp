//
//  MySoldItemsTableViewCell.swift
//  EbayApp
//
//  Created by Mobile_Pace on 05/12/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class MySoldItemsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var SoldProdIdLbl: UILabel!
    @IBOutlet weak var SoldProdLbl: UILabel!
    @IBOutlet weak var SoldImgLbl: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

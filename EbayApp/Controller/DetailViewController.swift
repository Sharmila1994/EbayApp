//
//  DetailViewController.swift
//  Auction
//
//  Created by Mobile_Pace on 21/11/17.
//  Copyright © 2017 Mobile_Pace. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var getname : String?
    var getImage : UIImage?
    var getDCurrentBidPrice : String?
    var getDExpiryTime : String?
    var getDUserId :String?
    var getDescrition:String?
    var getStartTime : String?
    
    
    
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var DescriptionLbl: UILabel!
    
    // @IBOutlet weak var CurrentBidPriceLbl: UILabel!
    
    @IBOutlet weak var StartTimeLbl: UILabel!
    
    
    @IBOutlet weak var IdLbl: UILabel!
    
    @IBOutlet weak var ExpiryTimeLbl: UILabel!
    
    @IBOutlet weak var CBidPriceLbl: UILabel!
    
    
    @IBOutlet weak var BidAmountLbl: UILabel!
    
    
    @IBAction func BidTextLbl(_ sender: UITextField) {
    }
    
    @IBAction func SubmitLbl(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Layer 14")!)
        // Do any additional setup after loading the view.
        imgImage.image = getImage
        lblName.text = getname
        
        CBidPriceLbl.text = getDCurrentBidPrice
        ExpiryTimeLbl.text = getDExpiryTime
        DescriptionLbl.text = getDescrition
        StartTimeLbl.text = getStartTime
        IdLbl.text = getDUserId
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */




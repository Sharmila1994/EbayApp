//
//  ViewController.swift
//  Auction
//
//  Created by Roshan on 21/11/17.
//  Copyright © 2017 Roshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var name:NSArray = []
    var imageArr:NSArray = []
    var BidPrice: NSArray = []
    var ExpiryTime: NSArray = []
    var StartTime: NSArray = []
    var Description: NSArray = []
    var UserId: NSArray = []
    
    var selectedSegment = 1
    let array2 = ["1","2","3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name = [ "WagonR","Karizma","Rolex Watch","HP Pavilion","Red Shoes","TV"]
        imageArr = [UIImage(named: "1")!,UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!,UIImage(named: "5")!, UIImage(named: "6")!]
        BidPrice = [ "Current Bid Price = 10,000 $ ","Current Bid Price = 8,000 $ ","Current Bid Price = 1200 $ ","Current Bid Price = 6500 $ ","Current Bid Price = 200 $ ","Current Bid Price = 400 $ "]
        ExpiryTime = [ "Expiry Time = 12:30 PM","Expiry Time = 4:30 PM","Expiry Time = 2:30 AM","Expiry Time = 8:05 AM","Expiry Time = 9:30 PM","Expiry Time = 5:55 AM"]
        
        StartTime = [ "Start Time = 12:30 AM","Start Time = 2:30 AM","Start Time = 9:30 PM","Start Time = 8:25 PM","Start Time = 8:30 AM","Start Time = 5:25 PM"]
        Description = [ "Don't cry because it's over, smile because it happened","Be yourself everyone else is already taken AM","Without music life would be a mistake","So many books, so little time","Be the change that you wish to see in the world.","Don't cry because it's over, smile because it happened."]
        UserId = [ "User Id = US1701","User Id = US1702","User Id = US1703","User Id = US1704","User Id = US1705","User Id = US1706"]
        
        
        self.TableviewLbl.delegate = self
        self.TableviewLbl.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var TableviewLbl: UITableView!
    
    @IBAction func SegmentLbl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            
            selectedSegment = 1
        }
        else {
            selectedSegment = 2
        }
        self.TableviewLbl.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if selectedSegment == 1
        {
            return name.count
            
        }
        else
        {
            return array2.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let  cell = tableview.dequ
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! TableViewCell
        
        cell1.ProdImage.image = imageArr[indexPath.row] as? UIImage
        cell1.lblName.text! = name[indexPath.row] as! String
        
        cell1.BidPriceLbl.text! = BidPrice[indexPath.row] as! String
        cell1.ExpiryTimeLbl.text! = ExpiryTime[indexPath.row] as! String
        cell1.UserIdLbl.text! = UserId[indexPath.row] as! String
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2") as! TableViewCell
        
        cell2.ProdImage.image = imageArr[indexPath.row] as? UIImage
        // cell2.lblName.text! = name[indexPath.row] as! String
        
        //cell2.BidPriceLbl.text! = BidPrice[indexPath.row] as! String
        //cell2.ExpiryTimeLbl.text! = ExpiryTime[indexPath.row] as! String
        //cell2.UserIdLbl.text! = UserId[indexPath.row] as! String
        if selectedSegment == 1
        {
            return cell1
            
        }
        else
        {
            return cell2
        }
    }
    func tableView(_ tableview: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let Storyboard = UIStoryboard(name: "Main",bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        DvC.getImage = imageArr[indexPath.row] as! UIImage
        DvC.getname = name[indexPath.row] as! String
        DvC.getDCurrentBidPrice = BidPrice[indexPath.row] as! String
        DvC.getDescrition = Description[indexPath.row] as! String
        DvC.getDExpiryTime = ExpiryTime[indexPath.row] as! String
        DvC.getStartTime = StartTime[indexPath.row] as! String
        
        DvC.getDUserId = UserId[indexPath.row] as! String
        
        
        self.navigationController?.pushViewController(DvC, animated: true)
    }
}


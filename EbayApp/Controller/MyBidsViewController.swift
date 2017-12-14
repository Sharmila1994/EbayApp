//
//  MyBidsViewController.swift
//  EbayApp
//
//  Created by PACE on 11/28/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit


class MyBidsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var bidProdName:NSArray = []
    var bidAmount:NSArray = []
    var topPrice:NSArray = []
    var bidStatus:NSArray = []
    var imageArray = Array<UIImage>()
    
 //   var backAction:String
    
    @IBAction func BidBackLbl(_ sender: Any) {

        self.present(UIViewController(), animated: true, completion: nil)
         self.dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "backidentifier", sender: nil)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return bidProdName.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mybidsidentifier") as! MyBidsTableViewCell
        
        cell.bibProdNameLbl.text! = bidProdName[indexPath.row] as! String
        cell.bidAmountlbl.text! = bidAmount[indexPath.row] as! String
        cell.topPriceLbl.text! = topPrice[indexPath.row] as! String
        cell.bidStatusLbl.text! = bidStatus[indexPath.row] as! String
        cell.imageLbl.image  = imageArray[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Layer 14")!)
          
        
        
       
     //   UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "Font-Name", size: 20)!], for: .selected)
        
        
      /*  let colorNormal : UIColor = UIColor.black
        let colorSelected : UIColor = UIColor.white
        let titleFontAll : UIFont = UIFont(name: "American Typewriter", size: 15.0)!
        
        let attributesNormal = [
            NSAttributedStringKey.foregroundColor : colorNormal,
            NSAttributedStringKey.font : titleFontAll
        ]
        
        let attributesSelected = [
            NSAttributedStringKey.foregroundColor : colorSelected,
            NSAttributedStringKey.font : titleFontAll
        ]
        
        UITabBarItem.appearance().setTitleTextAttributes(attributesNormal,for:.normal)
        UITabBarItem.appearance().setTitleTextAttributes(attributesSelected, for: .selected)
        */
    // Do any additional setup if required.
    
    
    func backAction(){
        //print("Back Button Clicked")
        dismiss(animated: true, completion: nil)
    }
        
        bidProdName = [" Nike Shoe", "Dell LapTop"]
        bidAmount = ["Bid Amount:20$" , "Bid Amount:600$" ]
        topPrice = ["Top Price:35$","Top Price:950$"]
        bidStatus = ["Bid Status:open", "Bid Status:closed"]
   imageArray += [ UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!]
        
        // Do any additional setup after loading the view.
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

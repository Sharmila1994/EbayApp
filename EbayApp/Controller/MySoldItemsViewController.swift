//
//  MySoldItemsViewController.swift
//  EbayApp
//
//  Created by Mobile_Pace on 05/12/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class MySoldItemsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var SoldProdName:NSArray = []
    var SoldProdId:NSArray = []
   // var SoldimageArray = Array<UIImage>()
    
    var SoldimageArray:NSArray = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SoldProdName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MySoldItemsTableViewCell") as! MySoldItemsTableViewCell
        
        cell.SoldProdLbl.text! = SoldProdName[indexPath.row] as! String
        cell.SoldProdIdLbl.text! = SoldProdId[indexPath.row] as! String
       cell.SoldImageLbl.image  = SoldimageArray[indexPath.row] as? UIImage
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        SoldProdName = [ "WagonR","Karizma","Rolex Watch","HP Pavilion","Red Shoes","TV"]
        SoldimageArray = [UIImage(named: "1")!,UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!,UIImage(named: "5")!, UIImage(named: "6")!]
      SoldProdId = ["Prod Id:12ety5" , "Prod Id:J256ly5", "Prod Id:12ety5" , "Prod Id:J256ly5","Prod Id:12ety5" , "Prod Id:J256ly5"]
        
        // imageArray += [ UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!]
        
        // Do any additional setup after loading the view.
    }

 
    @IBAction func SoldBackLbl(_ sender: UIBarButtonItem) {
         performSegue(withIdentifier: "Soldbackidentifier", sender: nil)
        
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

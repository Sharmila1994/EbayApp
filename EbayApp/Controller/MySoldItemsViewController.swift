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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SoldProdName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MySoldItemsTableViewCell") as! MySoldItemsTableViewCell
        
        cell.SoldProdLbl.text! = SoldProdName[indexPath.row] as! String
        cell.SoldProdIdLbl.text! = SoldProdId[indexPath.row] as! String
       // cell.SoldImgLbl.image  = SoldimageArray[indexPath.row]
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        SoldProdName = [" Nike Shoe", "Dell LapTop"]
        SoldProdId = ["Bid Amount:20$" , "Bid Amount:600$" ]
        
        // imageArray += [ UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!]
        
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

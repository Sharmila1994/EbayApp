//
//  SellProductViewController.swift
//  EbayApp
//
//  Created by PACE on 11/22/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class SellProductViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var prodName:NSArray = []

   @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var input1TextView: UITextView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        prodName = ["Product name" , "Base price" , "Condition" ,"Description" ,"Expiration"]
        
        //Get Path
    /*    func getPath() -> String {
            let plistFileName = "sellProducts.plist"
            let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
            let documentPath = paths[0] as NSString
            let plistPath = documentPath.appendingPathComponent(plistFileName)
            return plistPath
        }

       */
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prodName.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productTableViewCell") as! productTableViewCell
        
        cell.title1lbl.text! = prodName[indexPath.row] as! String
        return cell
    }
    
 
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */




/*
func saveProductDetails() {
    let plistPath = self.getPath()
    self.textView.text = ""
    if FileManager.default.fileExists(atPath: plistPath) {
        if let saveProductDetails = NSMutableDictionary(contentsOfFile: plistPath) {
            for (_, element) in saveProductDetails.enumerated() {
                self.textView.text = self.textView.text + "\(element.key) --> \(element.value) \n"
            }
        }
    }
}


}


//On Click OF Save

func saveButton(_ sender: UIButton)
        
   {
    let plistPath = self.getPath()
    if FileManager.default.fileExists(atPath: plistPath)
    {
        let saveProductDetail = NSMutableDictionary(contentsOfFile: plistPath)!
        saveProductDetail.setValue(input1TextView.text!, forKey: productLabel.text!)
        saveProductDetail.write(toFile: plistPath, atomically: true)
    }
    input1TextView.text = ""
    productLabel.text = ""
    saveProductDetails()
    
}
*/
}

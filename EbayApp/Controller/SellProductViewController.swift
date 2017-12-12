//
//  SellProductViewController.swift
//  EbayApp
//
//  Created by PACE on 11/22/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class SellProductViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var productName:NSArray = []

 //  @IBOutlet weak var productLabel: UILabel!
    
   // @IBOutlet weak var input1TextView: UITextView!
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        createAlert(Title: "Title", message: "message")
    }
    
    
 
    @IBAction func cancelButton(_ sender: Any) {
        self.dismiss(animated:true,completion:nil)
     //performSegue(withIdentifier: "producttoHomeBack", sender: nil)

    
    }
    

    override func didReceiveMemoryWarning() {
      
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productName.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productTableViewCell") as! productTableViewCell
        
        cell.title1lbl.text! = productName[indexPath.row] as! String
        return cell
    }
   /* override func viewDidAppear(_ animated: Bool)
     {
        createAlert(Title: title!, message: "this is message")
    }
    */
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        productName = ["Product name" , "Base price" , "Condition" ,"Description" ,"Expiration"]
        
        //Get Path
     /*   func getPath() -> String {
            let plistFileName = "sellProducts.plist"
            let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
            let documentPath = paths[0] as NSString
            let plistPath = documentPath.appendingPathComponent(plistFileName)
            return plistPath
            
           */
            
            
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


//func saveButton(_ sender: UIButton)

    func createAlert (Title:String, message:String)
    {
        let alert = UIAlertController(title: "Product Details has been saved sucessfully", message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
         //   alert.dismiss(animated: true, completion: nil)
            
        self.performSegue(withIdentifier: "saveToHomeIdentifier", sender: nil)
            print("Yes")
          // self.present(alert, animated: true, completion: nil)
        }))
  //  alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: { (action) in
          //  alert.dismiss(animated: true, completion: nil)
           // print("No")
       // }))
        
      self.present(alert, animated: true, completion: nil)
        
        //alert.dismiss(animated: true, completion: nil)
        
        
    }
}

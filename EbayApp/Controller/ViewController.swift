//
//  ViewController.swift
//  EbayApp
//
//  Created by PACE on 11/21/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emaillbl: UITextField!
    
    @IBOutlet weak var pwdlbl: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
        
        
    }


    @IBAction func signinbutton(_ sender: UIButton!)
    {
        
        let emailid = self.emaillbl.text
        let password = self.pwdlbl.text
        
        if emailid != nil && password != nil
        {
            performSegue(withIdentifier: "loginsegueid", sender: self)
           
             //self.canPerformUnwindSegueAction(signinbutton , from: <#T##UIViewController#>, withSender: TableViewController)
            
            //self.canPerformAction(signinbu, withSender: TableViewController)
           // self.performSelector(inBackground: signinbutton, with: TableViewControlller)
            
            
        }
        var alert = UIAlertView()
        alert.title = "Tiltle"
        
        
    }

    
}


//
//  SideMenuControllerViewController.swift
//  EbayApp
//
//  Created by Mobile_Pace on 06/12/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import UIKit

class Side: UIViewController {
 var isSlideMenu = true
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    @IBOutlet weak var lftLay: NSLayoutConstraint!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PrfBtn(_ sender: UIButton) {
    }
    
    @IBAction func SidBtn(_ sender: Any) {
        if isSlideMenu {
            lftLay.constant = 0
            
        }
        else{
            lftLay.constant = -140
        }
        isSlideMenu = !isSlideMenu
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



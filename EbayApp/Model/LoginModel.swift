//
//  File.swift//  EbayApp
//
//  Created by PACE on 11/21/17.
//  Copyright © 2017 PACE. All rights reserved.
//

import Foundation

class LoginModel
{
   
    var email_id: String{
        get {
            return self.email_id
        }
        set(newEmail_id)
        {
            self.email_id = newEmail_id
        }
    }
    
    var password: String{
        get {
            return self.password
        }
        set(newPassword)
        {
            self.password = newPassword
        }
    }
    
    
}

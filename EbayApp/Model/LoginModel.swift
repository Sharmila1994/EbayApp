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
/* func withdraw(amount: Double) -> Bool {
    var balance: Double = 100
    
    if balance > amount {
        balance -= amount
        return true
    } else {
        print(" test5")
        return false
    }
}


func DoLogin(emaillbl:String, pwdlbl:String) -> Bool
{
    
    
    
    let url = URL(string: "https://example.com/api/v1/records.json")
    //let url = URL(string: "http://www.kaleidosblog.com/tutorials/login/api/login√")
    
    let session = URLSession.shared
    
    let request = NSMutableURLRequest(url: url!)
    request.httpMethod = "POST"
    let paramToSend = "emailid" + emaillbl + "&password=" + pwdlbl
    
    request.httpBody = paramToSend.data(using: String.Encoding.utf8)
    
    let task = session.dataTask(with: request as URLRequest, completionHandler : {
        (data, response, error) in
        guard let _:Data = data else
        {
            print(" test1")
            return
        }
        let json:Any?
        
        do
        {
            json = try JSONSerialization.jsonObject(with: data!, options: [])
        }
        catch
        {   print(" test2")
            return
        }
        
        guard let server_response = json as? NSDictionary else
        {
            print(" test3")
            return
        }
        
        
        if let data_block = server_response["data"] as? NSDictionary
        {
            if let session_data = data_block["session"] as? String
            {
                let preferences = UserDefaults.standard
                preferences.set(session_data, forKey: "session")
                DispatchQueue.main.async(
                   
                    execute:self.LoginDone
                )
                
            }
        }
        
        
    })
    
    return true
 
    
    
    task.resume()
    
    
}




 */

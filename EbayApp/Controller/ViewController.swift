import UIKit
import Foundation

class ViewController: UIViewController
{
    @IBOutlet weak var emaillbl: UITextField!
    
    @IBOutlet weak var pwdlbl: UITextField!
    
    @IBOutlet weak var signinLbl: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      /*  let preferences = UserDefaults.standard
        if(preferences.object(forKey: "session") != nil)
        {
            LoginDone()
        }
        else
        {
            LoginToDo()
        }
        
    }
*/
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }


    @IBAction func signinbutton(_ sender: Any)
    {
        
       /* if(signinLbl.titleLabel?.text == "Logout")
        {
            let preferences = UserDefaults.standard
            
            preferences.removeObject(forKey: "session")
            LoginToDo()
           return
        }
        
           */
        
        let emailid = emaillbl.text
        let password = pwdlbl.text
        
       // DoLogin(emaillbl: emailid!, pwdlbl: password!)
        
        if(emailid == ""  || password == "")
        {
           // return
               // self.ViewController(SellProductViewController, animated:true, completion:nil)
        }
    }
        
       /*  func DoLogin(emaillbl:String, pwdlbl:String)
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
            
            
            
            
        
      task.resume()
            

}
    
    
func LoginToDo()
{
    emaillbl.isEnabled = true
    pwdlbl.isEnabled = true
    signinLbl.setTitle("Login", for: .normal)
    
}
func LoginDone()
{
    emaillbl.isEnabled = false
    pwdlbl.isEnabled = false
    signinLbl.setTitle("Logout", for: .normal)
    
}

}
*/
}


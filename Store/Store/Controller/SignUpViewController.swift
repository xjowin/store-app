import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        let l = login.text
        let p = password.text
        
        if l!.isEmpty || p!.isEmpty {
            let alert = UIAlertController(title: "Error", message: "All fields are required!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
            
        }
        
        else {
            let isNumber = (p!.map{i in i.isNumber}).contains(true)
            let isLength = (p!.count >= 5) ? true : false
            
            if !isNumber || !isLength {
                let alert = UIAlertController(title: "Error", message: "Password is too easy!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            }
            
            if login.text! == mainDict[l!] {
                let alert = UIAlertController(title: "Error", message: "User with the same username already exists!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            }
            
            else {
                mainDict[l!] = p!
                
                let new = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                
                new.modalPresentationStyle = .fullScreen
                self.present(new, animated: true)
            }
        }
    }
}

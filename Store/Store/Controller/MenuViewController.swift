import UIKit

class MenuViewController: UIViewController {

    
    @IBOutlet weak var yourCoins: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeGesture.direction = .up
        view.addGestureRecognizer(swipeGesture)
                
        yourCoins.text = String(earnedCoins)
    }
    
    @objc func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .up {
            let new = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }
    }
}

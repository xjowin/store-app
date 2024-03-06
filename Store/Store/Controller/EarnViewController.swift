import UIKit

class EarnViewController: UIViewController {

    
    @IBOutlet weak var earnCounterLbl: UILabel!
    @IBOutlet weak var numberField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeGesture.direction = .up
        view.addGestureRecognizer(swipeGesture)
        
    }
     
    
    @objc func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .up {
            let new = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }
    }
    
    
    @IBAction func checkBtn(_ sender: Any) {
        let randGenNum = Int.random(in: 1...10)
        
        if numberField.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Text field cannot be empty!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
        else if numberField.text == String(randGenNum) {
            earnedCoins += 100
            earnCounterLbl.text = "Nice!\nYou earned 100 coins"
        }
        else {
            earnCounterLbl.text = "Oh sh@t!\nThe number was \(randGenNum)"
        }
    }
}

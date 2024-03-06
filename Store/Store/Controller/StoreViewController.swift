import UIKit

class StoreViewController: UIViewController {

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
    
    @IBAction func buyBtn(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        category = tag
        let new = storyboard?.instantiateViewController(withIdentifier: "ProductViewController") as! ProductViewController
        new.modalPresentationStyle = .fullScreen
        self.present(new, animated: true)
    }
}

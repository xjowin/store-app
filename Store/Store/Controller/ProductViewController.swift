import UIKit

class ProductViewController: UIViewController {

    
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var prodictImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeGesture.direction = .up
        view.addGestureRecognizer(swipeGesture)
        
        
        if category == 1 {
            productNameLbl.text = "Vision Pro"
            priceLbl.text = "3.499 coins"
            
            let visionProImage = UIImageView(image: UIImage(named: "visionProPic2.png")!)
            prodictImage.image = visionProImage.image
        }
        if category == 2 {
            productNameLbl.text = "Macbook Air"
            priceLbl.text = "1.599 coins"
            
            let macbookImage = UIImageView(image: UIImage(named: "macbookPic2.png")!)
            prodictImage.image = macbookImage.image
        }
        if category == 3 {
            productNameLbl.text = "iPad Air"
            priceLbl.text = "1.099 coins"
            
            let ipadImage = UIImageView(image: UIImage(named: "ipadPic2.png")!)
            prodictImage.image = ipadImage.image
        }
        if category == 4 {
            productNameLbl.text = "iPhone 15"
            priceLbl.text = "799 coins"
            
            let iphoneImage = UIImageView(image: UIImage(named: "iphonePic2.png")!)
            prodictImage.image = iphoneImage.image
        }
    }
    
    
    @objc func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .up {
            // Обработка свайпа вверх
            let new = storyboard?.instantiateViewController(withIdentifier: "StoreViewController") as! StoreViewController
            new.modalPresentationStyle = .fullScreen
            self.present(new, animated: true)
        }
    }
    
    
    @IBAction func buyBtn(_ sender: Any) {
        if category == 1 {
            if earnedCoins >= 3500 {
                let alert = UIAlertController(title: "Congratulations!", message: "You made a purchase!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
                earnedCoins -= 3500
            }
            else {
                let alert = UIAlertController(title: "Oops!", message: "You don't have enough coins!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            }
        }
        if category == 2 {
            if earnedCoins >= 1600 {
                let alert = UIAlertController(title: "Congratulations!", message: "You made a purchase!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
                earnedCoins -= 1600
            }
            else {
                let alert = UIAlertController(title: "Oops!", message: "You don't have enough coins!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            }
        }
        if category == 3 {
            if earnedCoins >= 1100 {
                let alert = UIAlertController(title: "Congratulations!", message: "You made a purchase!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
                earnedCoins -= 1100
            }
            else {
                let alert = UIAlertController(title: "Oops!", message: "You don't have enough coins!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            }
        }
        if category == 4 {
            if earnedCoins >= 800 {
                let alert = UIAlertController(title: "Congratulations!", message: "You made a purchase!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
                earnedCoins -= 800
            }
            else {
                let alert = UIAlertController(title: "Oops!", message: "You don't have enough coins!", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            }
        }
    }
}

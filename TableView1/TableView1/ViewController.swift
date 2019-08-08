
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var box = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func countUp(_ sender: Any) {
        box += 1
        label.text = String(box)
        
        
        if box > 10 {
            //画面遷移させる
            let viewController2:ViewController2 = self.storyboard?.instantiateViewController(withIdentifier: "next") as! ViewController2
            
            viewController2.count = box
            self.navigationController?.pushViewController(viewController2, animated: true)
        }
        
    }
    
}


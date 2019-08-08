
import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var label: UILabel!
    var count2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(count2)

       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

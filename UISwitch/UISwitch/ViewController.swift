import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UILabel: UILabel!
    @IBOutlet weak var UISwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Swichを押してONとOFFを切り替える
    @IBAction func UISwitch2(_ sender: UISwitch) {
        if sender.isOn{
            self.UILabel.text = "ON"
        }else{
            self.UILabel.text = "OFF"
        }
    }
    
}


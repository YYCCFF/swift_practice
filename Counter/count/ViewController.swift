import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    /*
     最初の数値は0
     結果がここに出る
    */
    var count:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        //「+」を押すと上に出ている数字から1足す
        count = count + 1
        label.text = String(count)
    }
    
    @IBAction func minus(_ sender: Any) {
        //「-」を押すと上に出ている数字から1引く
        count = count - 1
        label.text = String(count)
        
        //「-」を押しても0以下にはならない
        if(count<0){
            count = 0
            label.text = String(0)
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        //RESETボタンを押すと0に戻る
        count = 0
        label.text = String(count)
    }
}


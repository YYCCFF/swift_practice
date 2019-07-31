

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var runnerImageView: UIImageView!
  
    
    var imageArray = [UIImage]()
    var timer1 = Timer()
    var timer2 = Timer()
    var updateCount = 0
    
    @IBOutlet weak var runButton: UIButton!
    //何秒かを示す
    var countUp = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = "0"
        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")
        
        imageArray = [image0!,image1!,image2!,image3!,image4!,image5!]
    }

    @IBAction func run(_ sender: Any) {
        
        //押されるとSTOPボタンが押されるまで使用停止
        runButton.isEnabled = false
        
        /*
         タイマーを起動させる。
         runnerImageViewに1秒ごとに画像を反映させる
        */
        
        //タイマーの処理
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: {(timer) in
            
            //カウントアップ
            self.countUp += 1
            
            //ラベルに反映
            self.countLabel.text = String(self.countUp)
        })
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {(timer) in
            
            if(self.updateCount > 5){
                self.updateCount = 0
                self.runnerImageView.image = UIImage(named: "dash0.png")
            }else{
                self.runnerImageView.image = self.imageArray[self.updateCount]
            }
            self.updateCount += 1
        })
    }
    
    @IBAction func stop(_ sender: Any) {
        
        //STOPボタンを押すことで再びRUNボタンを使えるようにする
        runButton.isEnabled = true
        
        //タイマーを止める
        timer1.invalidate()
        timer2.invalidate()
    }
}


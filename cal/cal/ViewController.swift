//
//  ViewController.swift
//  cal

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cal: UILabel!
    @IBAction func result() {
        //0から10000までの数字をランダムで選ぶ
        let number1 = Int.random(in: 0 ... 10000)
        //number1のInt型をnumber2のへString型として変換
        let number2:String = String(number1)
        //print(number2)
        
        //結果を見るを押すと???に出力
        cal.text = number2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


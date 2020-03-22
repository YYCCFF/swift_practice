import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var resultUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
    }
    
    //textFieldを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        passwordTextField.resignFirstResponder()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        //番号を入力する
        let password:Int? = Int(passwordTextField.text!)
        //パスワードは0000
        if ((password) == 0000){
          resultUILabel.textColor = UIColor.blue
          return resultUILabel.text = "LOGINに成功しました"
        }else{
          resultUILabel.textColor = UIColor.red
          return resultUILabel.text = "パスワードが違います"
        }
    }
}



import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var myMapKit: MKMapView!
    
     //CLLocationManagerの入れ物を用意
    var myLocation:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CLLocationManagerをインスタンス化
        myLocation = CLLocationManager()
        
        //位置情報使用許可のリクエストを表示するメソッドの呼び出し
        myLocation.requestWhenInUseAuthorization()
    }
    
     //位置情報取得に失敗したときに呼び出されるメソッド
    func locationManager(_ maneger:CLLocationManager, didFailWithError error:Error){
        print("Error")
    }


}


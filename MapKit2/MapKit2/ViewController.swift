
import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var myMapKit: MKMapView!
    
     //CLLocationManagerの入れ物を用意(Prepare container for CLLocationManager)
    var myLocation:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CLLocationManagerをインスタンス化(Instantiate CLLocationManager)
        myLocation = CLLocationManager()
        
        //位置情報使用許可のリクエストを表示するメソッドの呼び出し(Invoke method to display request for location information permission)
        myLocation.requestWhenInUseAuthorization()
    }
    
     //位置情報取得に失敗したときに呼び出されるメソッド(Method called when location information acquisition fails)
    func locationManager(_ maneger:CLLocationManager, didFailWithError error:Error){
        print("Error")
    }


}


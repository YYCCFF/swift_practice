
import UIKit
import MapKit

class ViewController: UIViewController{
    
    @IBOutlet weak var myMapKit: MKMapView!
    @IBOutlet weak var myUISegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        //松山市が画面上に表示される
        //Matsuyama city is displayed on the screen
        myMapKit.centerCoordinate = CLLocationCoordinate2D(latitude: 33.8391,longitude: 132.7655)
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1,longitudeDelta: 0.1)
        let regin:MKCoordinateRegion = MKCoordinateRegion(center: myMapKit.centerCoordinate, span: span)
        myMapKit.region = regin
        
    }
    //左がstandard、真ん中がhybrid、右がsatellite
    //Left is standard, middle is hybrid, right is satellite
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
              myMapKit.mapType = MKMapType.standard
        case 1:
              myMapKit.mapType = MKMapType.hybrid
        case 2:
              myMapKit.mapType = MKMapType.satellite
        default:
              print("Error")
        }
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }

}


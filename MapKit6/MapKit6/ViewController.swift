
import UIKit
import MapKit


class ViewController: UIViewController,MKMapViewDelegate{

    @IBOutlet weak var myMapKit: MKMapView!
    @IBOutlet weak var PositiveGeo: UIButton!
    var pin:MKPointAnnotation!
    
    //経度と緯度を設定(松山市)
    //Setting latitude and longitude(Matsuyama city)
    let latitude:CLLocationDegrees = 33.835782
    let longitude:CLLocationDegrees = 132.762561
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //経度と緯度を設定(松山市)
        //Setting latitude and longitude(Matsuyama city)
        let firstPosition:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        //myMapkitに最初の位置を設定
        //Set initial position in myMapkit
        myMapKit.setCenter(firstPosition, animated: true)
        
        //縮尺
        //Scale
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region:MKCoordinateRegion = MKCoordinateRegion(center: firstPosition, span: span)
        myMapKit.region = region
        
        pin = MKPointAnnotation()
        pin.title = "Latitude"
        pin.subtitle = "Longitude"
        pin.coordinate = firstPosition
        myMapKit.addAnnotation(pin)
        
    }
    
    //ボタンを押すことで緯度が表示される
    //Latitude is displayed by pressing the button
    //pinをタップすると経度も表示される
    //Longitude is displayed by tapping the pin
    @IBAction func pushedButton(_ sender: UIButton) {
        let geocoder:CLGeocoder = CLGeocoder()
        let location:CLLocation = CLLocation(latitude:latitude, longitude:longitude)
        let address:String = "1 Infinite Loop, Cupertino, CA, USA"
        
        geocoder.geocodeAddressString(address, completionHandler:{(placemarks, error) -> Void in
            var placemark:CLPlacemark!
            for placemark in placemarks!{
                let location:CLLocation = placemark.location!
                print("Latitude:\(location.coordinate.latitude)")
                print("Longitude:\(location.coordinate.longitude)")
                
                self.pin.title = "Location:\(location.coordinate.latitude)"
                self.pin.subtitle = "Location:\(location.coordinate.longitude)"
            }
  
            })
        }
    
    }
    


import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    @IBOutlet weak var myMapKit: MKMapView!
    @IBOutlet weak var reverseGeo: UIButton!
    var pin:MKPointAnnotation!
    
    //松山市
    //Matsuyama City
    var latitude:CLLocationDegrees = 33.835782
    var longitude:CLLocationDegrees = 132.762561
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let firstPosition:CLLocationCoordinate2D = CLLocationCoordinate2DMake (latitude,longitude)
        myMapKit.centerCoordinate = firstPosition
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region:MKCoordinateRegion = MKCoordinateRegion(center: firstPosition, span: span)
        myMapKit.region = region
        
        //ピンを作成する
        //Make a pin
        pin = MKPointAnnotation()
        pin.title = "Country"
        pin.coordinate = firstPosition
        pin.subtitle = "Name"
        myMapKit.addAnnotation(pin)
        
    }
    
    //逆ジオ
    //When you tap "逆ジオ" , the button starts reverse geo
    @IBAction func tappedButton(_ sender: UIButton) {
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: latitude, longitude: longitude)
        geocoder.reverseGeocodeLocation(location, preferredLocale:nil, completionHandler: {(placemarks,error) -> Void in
            var placemark:CLPlacemark!
            for placemark in placemarks!{
                print("Name:\(placemark.name)")
                print("Country:\(placemark.country)")
                print("ISOcountryCode:\(placemark.isoCountryCode)")
                print("administrativeArea:\(placemark.administrativeArea)")
                print("subAdministrativeArea:\(placemark.subAdministrativeArea)")
                print("Locality:\(placemark.locality)")
                print("PostalCode:\(placemark.postalCode)")
                print("areasOfInterest:\(placemark.areasOfInterest)")
                print("Ocean:\(placemark.ocean)")
                
                //ピンに情報を挿入する
                //Insert information into pins
                self.pin.title = "Country:\(placemark.country!)"
                self.pin.subtitle = "Name:\(placemark.name!) "
            }
            
        })
    }
    
}


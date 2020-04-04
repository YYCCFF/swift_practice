
import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var myMapKit: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //経度と緯度を設定(松山市)
        //Setting latitude and longitude(Matsuyama city)
        let latitude:CLLocationDegrees = 33.835782
        let longitude:CLLocationDegrees = 132.762561
        let firstPosition:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        //myMapkitに最初の位置を設定
        //Set initial position in myMapkit
        myMapKit.setCenter(firstPosition, animated: true)
        
        //縮尺
        //Scale
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region:MKCoordinateRegion = MKCoordinateRegion(center: firstPosition, span: span)
        myMapKit.region = region
        
        //自分の視点の座標
        //Coordinates of your viewpoint
        let pointOfView:CLLocationCoordinate2D = CLLocationCoordinate2DMake(33.000000, 132.742561)
        
        //空からの高さ
        //Height from the sky
        let altitude:CLLocationDistance = 150
        
        //cameraに中心点、視点、高さを設定
        //Set center point, viewpoint and height for camera
        let camera:MKMapCamera = MKMapCamera(lookingAtCenter: firstPosition, fromEyeCoordinate: pointOfView, eyeAltitude: altitude)
        
        //cameraをmyMapKitに設定
        //Set camera to myMapKit
        myMapKit.setCamera(camera, animated: true)
        
        //建物を3Dに見えるようにする
        //Make buildings look 3D
        myMapKit.showsBuildings = true
        
        //myMapKitにviewを追加
        //Add view to myMapKit
        self.view.addSubview(myMapKit)
    }


}


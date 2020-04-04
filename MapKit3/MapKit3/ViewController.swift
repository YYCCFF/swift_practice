//
//  ViewController.swift
//  MapKit3
//
//  Created by 近沢勇輝 on 2020/04/02.
//  Copyright © 2020 Yuki Chikazawa. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
    
    @IBOutlet weak var myMapKit: MKMapView!
    
     //CLLocationManagerを定義(Define CLLocationManager)
    var myLocation:CLLocationManager!
    
    //ロングタップをした時に立てるピン(A pin that stands when you make a long tap)
    var pin:MKPointAnnotation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         //CLLocationManagerをインスタンス化(Instantiate CLLocationManager)
        myLocation = CLLocationManager()
        
        //位置情報使用の許可(Permission to use location information)
        myLocation.requestWhenInUseAuthorization()
        
    }
    
    //ロングタップした時に起こること(What happens when you long tap)
    @IBAction func longTap(_ sender: UILongPressGestureRecognizer) {
        
        //ロングタップの最初の感知のみの受け取り(Receiving only the first detection of a long tap)
        if(sender.state != UIGestureRecognizer.State.began){
            return
        }
        
        //インスタンス化(Make instantiation)
        pin = MKPointAnnotation()
        
        //位置情報の取得(Get location information)
        let location:CGPoint = sender.location(in: myMapKit)
        
        //取得した位置情報を2Dに変換(Convert the acquired location information to 2D)
        let longPressCoodinate:CLLocationCoordinate2D = myMapKit.convert(location, toCoordinateFrom: myMapKit)
        
        //長くタップしたピンを位置に入力(Enter long tapped pin in position)
        pin.coordinate = longPressCoodinate
        
        //ピンを地図に刺す(Stick a pin on the map)
        myMapKit.addAnnotation(pin)
    }
    

}


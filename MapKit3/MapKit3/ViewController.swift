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
    
     //CLLocationManagerを定義
    var myLocation:CLLocationManager!
    
    //ロングタップをした時に立てるピン
    var pin:MKPointAnnotation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         //CLLocationManagerをインスタンス化
        myLocation = CLLocationManager()
        
        //位置情報使用の許可
        myLocation.requestWhenInUseAuthorization()
        
    }
    
    //ロングタップした時に起こる現象
    @IBAction func longTap(_ sender: UILongPressGestureRecognizer) {
        
        //ロングタップの最初の感知のみの受け取り
        if(sender.state != UIGestureRecognizer.State.began){
            return
        }
        
        //インスタンス化
        pin = MKPointAnnotation()
        
        //位置情報の取得
        let location:CGPoint = sender.location(in: myMapKit)
        
        //取得した位置情報を2Dに変換
        let longPressCoodinate:CLLocationCoordinate2D = myMapKit.convert(location, toCoordinateFrom: myMapKit)
        
        //長くタップしたピンを位置に入力
        pin.coordinate = longPressCoodinate
        
        //ピンを地図に刺す
        myMapKit.addAnnotation(pin)
    }
    

}


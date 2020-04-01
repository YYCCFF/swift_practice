//
//  ViewController.swift
//  MapKit1
//
//  Created by 近沢勇輝 on 2020/03/31.
//  Copyright © 2020 Yuki Chikazawa. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    var myMapKit:MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mapviewの作成
        myMapKit = MKMapView()
        myMapKit.frame = self.view.bounds
        myMapKit.delegate = self
        self.view.addSubview(myMapKit)
        
        //緯度と経度
        //東京駅(Tokyo Station)
        //緯度:35.681236,経度:139.767125
        let latitude: CLLocationDegrees = 35.681236
        let longitude: CLLocationDegrees = 139.767125
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)

        //縮尺の設定
        var region = myMapKit.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02

        //MapViewに反映
        myMapKit.setRegion(region, animated: true)
    }


}


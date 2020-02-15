//
//  FirstViewController.swift
//  OnCampus
//
//  Created by Dane Brazinski on 2/15/20.
//  Copyright © 2020 Dane Brazinski. All rights reserved.
//

import UIKit
import GoogleMaps

class FirstViewController: UIViewController {

    
    override func loadView(){
        super.loadView()
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 43.037665, longitude:  -76.134194, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        
        view = mapView
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 43.037843, longitude: -76.130896)
        marker.title = "Life Sciences"
        marker.snippet = "Syracuse"
        marker.map = mapView
        let ischool = GMSMarker()
        ischool.position = CLLocationCoordinate2D(latitude: 43.038271, longitude: -76.133502)
        ischool.title = "Hinds Hall"
        ischool.snippet = "Syracuse"
        ischool.map = mapView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}


//
//  ViewController.swift
//  MapView-Polygon
//
//  Created by Fran_DEV on 20/06/16.
//  Copyright © 2016 fjbelchi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let mapViewDelegate = MapViewDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView.delegate = self.mapViewDelegate
        self.setupPolygon()
    }
    
    private func setupPolygon() {
        var coordinates = [
                            CLLocationCoordinate2D(latitude: 42.000811, longitude: -124.212521),
                            CLLocationCoordinate2D(latitude: 41.976313, longitude: -120.015744),
                            CLLocationCoordinate2D(latitude: 38.968459, longitude: -119.971798),
                            CLLocationCoordinate2D(latitude: 34.994539, longitude: -114.621456),
                            CLLocationCoordinate2D(latitude: 32.535845, longitude: -117.122153),
                            CLLocationCoordinate2D(latitude: 33.271446, longitude: -117.451742),
                            CLLocationCoordinate2D(latitude: 33.612933, longitude: -117.915915),
                            CLLocationCoordinate2D(latitude: 33.738645, longitude: -118.377341),
                            CLLocationCoordinate2D(latitude: 34.038360, longitude: -118.554579),
                            CLLocationCoordinate2D(latitude: 34.561915, longitude: -120.629621)
                           ]
        
        let polygon = MKPolygon(coordinates: &coordinates, count: coordinates.count)
        self.mapView.add(polygon)
    }
    
}


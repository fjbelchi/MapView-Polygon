//
//  MapViewDelegate.swift
//  MapView-Polygon
//
//  Created by Fran_DEV on 20/06/16.
//  Copyright © 2016 fjbelchi. All rights reserved.
//

import Foundation
import MapKit

class MapViewDelegate: NSObject, MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let render = MKPolygonRenderer(overlay: overlay)
        render.fillColor = UIColor.red()
        return render
    }
}

//
//  ViewController.swift
//  GeoNetTest
//
//  Created by Matthew Heard on 19/02/16.
//  Copyright © 2016 Matthew Heard. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    var earthquake = Earthquake?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let earthquake = earthquake {
            centerMapOnEarthquake(earthquake)
        }
    }
    
    func centerMapOnEarthquake(earthquake: Earthquake) {
        let regionRadius: CLLocationDistance = 1000000 // 1000 km
        let region = MKCoordinateRegionMakeWithDistance(earthquake.location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(region, animated: false)
    }
}
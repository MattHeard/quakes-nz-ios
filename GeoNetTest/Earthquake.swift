//
//  Earthquake.swift
//  GeoNetTest
//
//  Created by Matthew Heard on 19/02/16.
//  Copyright © 2016 Matthew Heard. All rights reserved.
//

import UIKit

class Earthquake {
    // MARK: Properties
    var magnitude: Double
    var location: String // TODO: Change to MapKit location
    var timestamp: String // TODO: Change to iOS datetime
    var depth: Int
    var intensity: String
    
    // MARK: Initialization
    init(magnitude: Double, location: String, timestamp: String, depth: Int, intensity: String) {
        self.magnitude = magnitude
        self.location = location
        self.timestamp = timestamp
        self.depth = depth
        self.intensity = intensity
    }
}

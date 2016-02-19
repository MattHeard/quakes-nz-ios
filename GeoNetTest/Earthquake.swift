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
    var magnitude: String
    var location: String // TODO: Change to MapKit location
    var timestamp: String // TODO: Change to iOS datetime
    var depth: Int
    
    // MARK: Initialization
    init(magnitude: String, location: String, timestamp: String, depth: Int) {
        self.magnitude = magnitude
        self.location = location
        self.timestamp = timestamp
        self.depth = depth
    }
}

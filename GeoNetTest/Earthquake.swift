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
    var magnitude: Int  // TODO: Change to float
    var location: String // TODO: Change to MapKit location
    var timestamp: String // TODO: Change to iOS datetime
    
    // MARK: Initialization
    init(magnitude: Int, location: String, timestamp: String) {
        self.magnitude = magnitude
        self.location = location
        self.timestamp = timestamp
    }
}

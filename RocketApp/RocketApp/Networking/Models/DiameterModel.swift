//
//  DIameterModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Diameter: Decodable {
    var meters: Double
    
    static var exampleDiameter = Diameter(meters: 1.68)
}

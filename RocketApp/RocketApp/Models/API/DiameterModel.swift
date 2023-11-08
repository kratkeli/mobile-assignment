//
//  DIameterModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Diameter: Decodable {
    let meters: Double
    
    static let exampleDiameter = Diameter(meters: 1.68)
}

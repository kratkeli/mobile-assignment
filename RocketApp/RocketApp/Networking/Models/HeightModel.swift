//
//  HeightModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Height: Decodable {
    var meters: Double
    
    static var exampleHeight = Height(meters: 22.25)
}

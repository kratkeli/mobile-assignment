//
//  HeightModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Height: Decodable {
    let meters: Double
    
    static let exampleHeight = Height(meters: 22.25)
}

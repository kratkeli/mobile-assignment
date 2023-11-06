//
//  MassModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Mass: Decodable {
    var kg: Int
    
    static var exampleMass = Mass(kg: 30146)
}

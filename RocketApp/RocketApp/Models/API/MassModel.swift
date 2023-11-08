//
//  MassModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Mass: Decodable {
    let kg: Int
    
    static let exampleMass = Mass(kg: 30146)
}

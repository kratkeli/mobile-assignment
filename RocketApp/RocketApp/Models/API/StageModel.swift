//
//  StageModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Stage: Decodable{
    let reusable: Bool
    let engines: Int
    let fuelAmountTons: Double
    let burnTimeSec: Int?
    
    enum CodingKeys: String, CodingKey {
        case reusable
        case engines
        case fuelAmountTons = "fuel_amount_tons"
        case burnTimeSec = "burn_time_sec"
    }
    
    static let exampleStage = Stage(
        reusable: false,
        engines: 1,
        fuelAmountTons: 44.3,
        burnTimeSec: 169
    )
}

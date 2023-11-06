//
//  StageModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

struct Stage: Decodable{
    var reusable: Bool
    var engines: Int
    var fuelAmountTons: Double
    var burnTimeSec: Int?
    
    enum CodingKeys: String, CodingKey {
        case reusable
        case engines
        case fuelAmountTons = "fuel_amount_tons"
        case burnTimeSec = "burn_time_sec"
    }
    
    static var exampleStage = Stage(
        reusable: false,
        engines: 1,
        fuelAmountTons: 44.3,
        burnTimeSec: 169
    )
}

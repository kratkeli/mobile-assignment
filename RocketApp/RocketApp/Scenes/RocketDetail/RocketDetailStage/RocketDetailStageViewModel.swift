//
//  RocketDetailStageViewModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

final class RocketDetailStageViewModel: ObservableObject {
    let stage: Stage
    let stageName: String
    
    init(stage: Stage, stageName: String) {
        self.stage = stage
        self.stageName = stageName
    }
    
    func isReausable() -> Bool {
        if stage.reusable {
            return true
        }
        return false
    }
    
    func hasMultipleEngines() -> Bool {
        if stage.engines > 1 {
            return true
        }
        return false
    }
    
    /// Converts fuel from Double to Int.
    func getTonsOfFuel() -> Int {
        return Int(stage.fuelAmountTons)
    }
    
    func hasBurnTime() -> Bool{
        if stage.burnTimeSec != nil {
            return true
        }
        return false
    }
    
}

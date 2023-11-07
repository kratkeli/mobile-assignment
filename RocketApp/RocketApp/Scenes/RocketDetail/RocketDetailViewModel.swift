//
//  RocketDetailViewModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

final class RocketDetailViewModel: ObservableObject {
    let rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    func getParameters() -> [Parameter] {
        let height = Parameter(parameterName: "height", parameterValue: String(Int(rocket.height.meters))+"m")
        let diameter = Parameter(parameterName: "diameter", parameterValue: String(Int(rocket.diameter.meters))+"m")
        let mass = Parameter(parameterName: "mass", parameterValue: String(Int(rocket.mass.kg/1000))+"t")
        
        return [height, diameter, mass]
    }        
}

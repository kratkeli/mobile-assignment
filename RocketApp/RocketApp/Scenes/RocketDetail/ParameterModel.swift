//
//  ParameterModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import Foundation

struct Parameter: Identifiable {
    let id = UUID()
    let parameterName: String
    let parameterValue: String
    
    static let exampleParameter = Parameter(parameterName: "height", parameterValue: "22.25m")
}

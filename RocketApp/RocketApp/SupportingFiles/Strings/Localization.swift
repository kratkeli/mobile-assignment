//
//  Localization.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import Foundation

enum AppStrings {
    enum RocketAPIService {
        static let apiURL = "https://api.spacexdata.com/v3/rockets"
    }
    
    enum RocketList {
        static let title = "Rockets"
        
        enum Item {
            static let firstFlight = "First flight: "
        }
    }
    
    enum RocketDetail {
        static let launch = "Launch"
        static let overview = "Overview"
        static let parameters = "Parameters"
        static let photos = "Photos"
        
        static let height = "height"
        static let diameter = "diameter"
        static let mass = "mass"
        
        enum Stage {
            static let firstStage = "First Stage"
            static let secondStage = "Second Stage"
            static let reusable = "reausable"
            static let notReusable = "not reausable"
            static let engines = " engines"
            static let engine = " engine"
            static let fuel = " tons of fuel"
            static let burn = " seconds burn time"
        }
    }
    
    enum RocketLaunch {
        static let launch = "Launch"
        static let beforeLaunch = "Move your phone up\nto launch the rocket"
        static let launchSuccessfull = "Launch successfull!"
    }
}

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
    }
    
    enum RocketDetail {
        static let launch = "Launch"
        static let overview = "Overview"
        static let parameters = "Parameters"
        static let photos = "Photos"
    }
}

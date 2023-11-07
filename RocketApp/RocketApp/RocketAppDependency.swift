//
//  AppDependency.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

/// Instance of `RocketAppDependency`, which contains `RocketApp` dependencies.
let rocketAppDependencies = RocketAppDependency()

final class RocketAppDependency {
    lazy var rocketAPIService: RocketAPIServicing = RocketAPIService(apiURL: AppStrings.RocketAPIService.apiURL)
}

/// Protocol used when VM/Service has no dependencies.
protocol HasNoDependency {}

// MARK: - Extensions

extension RocketAppDependency: HasRocketAPIService {}


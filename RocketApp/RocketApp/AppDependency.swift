//
//  AppDependency.swift
//  RocketApp
//
//  Created by Krátká Eliška on 06.11.2023.
//

import Foundation

/// Instance of `AppDependency`, which contains `RocketApp` dependencies.
let appDependencies = AppDependency()

final class AppDependency {
    lazy var rocketAPIService: RocketAPIServicing = RocketAPIService(apiURL: AppStrings.RocketAPIService.apiURL)
}

/// Protocol used when VM/Service has no dependencies.
protocol HasNoDependency {}

// MARK: - Extensions

extension AppDependency: HasRocketAPIService {}


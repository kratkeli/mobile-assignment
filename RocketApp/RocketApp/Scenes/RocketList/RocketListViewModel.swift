//
//  RocketListViewModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

final class RocketListViewModel: ObservableObject {
    typealias Dependencies = HasRocketAPIService
    
    let rocketAPIService: RocketAPIServicing
    
    @Published var rockets: [Rocket] = []
    @Published var rocketsState: RocketsState = .notRequested
    
    init(dependencies: Dependencies) {
        rocketAPIService = dependencies.rocketAPIService
    }

    @MainActor
    func fetchRockets() {
        Task {
            rocketsState = .loading
            do {
                rockets = try await rocketAPIService.rockets()
                rocketsState = .loaded
            } catch {
                rocketsState = .loadingFailed
            }
        }
    }
}

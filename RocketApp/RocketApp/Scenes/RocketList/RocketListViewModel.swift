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
    
    init(dependencies: Dependencies) {
        rocketAPIService = dependencies.rocketAPIService
    }

    @MainActor
    func fetchRockets() {
        Task {
            do {
                rockets = try await rocketAPIService.rockets()
            } catch {
                //error
                rockets = []
            }
        }
    }
}

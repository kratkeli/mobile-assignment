//
//  RocketListItemViewModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

final class RocketListItemViewModel: ObservableObject {
    let rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    func getFormattedFirstFlight() -> String {
        return formatDate(date: rocket.firstFlight)
    }
    
    private func formatDate(date: String) -> String {
        let oldDateFormatter = DateFormatter()
        oldDateFormatter.dateFormat = "yyyy-MM-dd"
        let oldDate = oldDateFormatter.date(from: date)

        let newDateFormatter = DateFormatter()
        newDateFormatter.dateFormat = "d.M.yyyy"
        return newDateFormatter.string(from: oldDate!)
    }

    
}

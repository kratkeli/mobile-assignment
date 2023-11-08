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
    
    /// Returns a date of the first flight in d.M.yyyy.
    func getFormattedFirstFlight() -> String {
        return formatDate(date: rocket.firstFlight)
    }
    
    /// Reformats a date from API in yyyy-MM-dd to d.M.yyyy.
    private func formatDate(date: String) -> String {
        let oldDateFormatter = DateFormatter()
        oldDateFormatter.dateFormat = "yyyy-MM-dd"
        let oldDate = oldDateFormatter.date(from: date)

        let newDateFormatter = DateFormatter()
        newDateFormatter.dateFormat = "d.M.yyyy"
        return newDateFormatter.string(from: oldDate!)
    }
}

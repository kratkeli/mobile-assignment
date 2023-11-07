//
//  RocketListItemView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

struct RocketListItemView: View {
    let rocket: Rocket
    
    var body: some View {
        HStack(spacing: AppConstants.RocketList.ListItem.spacing) {
            Image("imgRocket")
            VStack(alignment: .leading) {
                Text(rocket.rocketName)
                    .font(.headline)
                Text(rocket.firstFlight)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct RocketListItemView_Previews: PreviewProvider {
    static var previews: some View {
        RocketListItemView(rocket: Rocket.exampleRocket)
    }
}

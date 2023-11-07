//
//  RocketListItemView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

struct RocketListItemView: View {
    @ObservedObject private var viewModel: RocketListItemViewModel
    
    init(viewModel: RocketListItemViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack(spacing: AppConstants.RocketList.ListItem.spacing) {
            Image("imgRocket")
            textView
        }
    }
    
    @ViewBuilder
    private var textView: some View {
        VStack(alignment: .leading) {
            Text(viewModel.rocket.rocketName)
                .font(.headline)
            Group {
                Text(AppStrings.RocketList.Item.firstFlight) +
                Text(viewModel.getFormattedFirstFlight())
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

struct RocketListItemView_Previews: PreviewProvider {
    static var previews: some View {
        RocketListItemView(viewModel: RocketListItemViewModel(rocket: Rocket.exampleRocket))
    }
}

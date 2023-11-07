//
//  ContentView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

struct RocketListView: View {
    @StateObject var viewModel: RocketListViewModel = RocketListViewModel(dependencies: rocketAppDependencies)
    
    var body: some View {
        NavigationView {
            menuView
                .navigationTitle(AppStrings.RocketList.title)
                .onAppear {
                    viewModel.fetchRockets()
                }
        }
    }

    @ViewBuilder
    private var menuView: some View {
        List {
            ForEach(viewModel.rockets) { rocket in
                NavigationLink(destination: RocketDetailView()) {
                    RocketListItemView(rocket: rocket)
                }
                .alignmentGuide(.listRowSeparatorLeading) {
                    $0[.leading]
                }
                .listRowInsets(
                    EdgeInsets(
                        top: AppConstants.RocketList.ListRowInsets.top,
                        leading: AppConstants.RocketList.ListRowInsets.leading,
                        bottom: AppConstants.RocketList.ListRowInsets.bottom,
                        trailing: AppConstants.RocketList.ListRowInsets.trailing
                    )
                )
            }
        }
    }
}

struct RocketListView_Previews: PreviewProvider {
    static var previews: some View {
        RocketListView()
    }
}

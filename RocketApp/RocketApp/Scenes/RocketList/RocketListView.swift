//
//  ContentView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

struct RocketListView: View {
    @StateObject var viewModel: RocketListViewModel = RocketListViewModel()
    
    var body: some View {
        NavigationView {
            menuView
                .navigationTitle(AppStrings.RocketList.title)
        }
    }

   @ViewBuilder
    private var menuView: some View {
        List {
            NavigationLink(destination: RocketDetailView()) {
                listItemView
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
    
    @ViewBuilder
    private var listItemView: some View {
        HStack(spacing: AppConstants.RocketList.ListItem.spacing) {
            Image("imgRocket")
            VStack(alignment: .leading) {
                Text("Name")
                    .font(.headline)
                Text("Description")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct RocketListView_Previews: PreviewProvider {
    static var previews: some View {
        RocketListView()
    }
}

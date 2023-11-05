//
//  RocketDetailView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

struct RocketDetailView: View {
    var body: some View {
        VStack {

        }
        .navigationBarTitle("Name")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: RocketLaunchView()) {
                    Text("Launch")
                }
        )
    }
}

struct RocketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailView()
    }
}

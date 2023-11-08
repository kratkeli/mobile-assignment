//
//  RocketLaunchView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

struct RocketLaunchView: View {
    @ObservedObject private var viewModel: RocketLaunchViewModel
    
    init(viewModel: RocketLaunchViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        rocketView
            .navigationBarTitle(AppStrings.RocketLaunch.launch)
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewModel.monitorDeviceMotion()
            }
            .onDisappear {
                viewModel.resetRocket()
            }
    }
    
    @ViewBuilder
    private var rocketView: some View {
        VStack {
            Spacer()
            Image(viewModel.rocketImageString)
                .offset(x: AppConstants.RocketLaunch.xOffset, y: viewModel.rocketYOffset)
            Text(viewModel.description)
        }
        .padding(.bottom, AppConstants.RocketLaunch.bottomPadding)
    }
}

struct RocketLaunchView_Previews: PreviewProvider {
    static var previews: some View {
        RocketLaunchView(viewModel: RocketLaunchViewModel())
    }
}

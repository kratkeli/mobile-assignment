//
//  RocketDetailView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

struct RocketDetailView: View {
    @ObservedObject private var viewModel: RocketDetailViewModel
    
    init(viewModel: RocketDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: AppConstants.RocketDetail.spacing) {
                overviewView
                parametersView
                stagesView
                photosView
            }
            .frame(maxWidth: .infinity)
            .padding(AppConstants.RocketDetail.padding)
            
        }
        .navigationBarTitle(viewModel.rocket.rocketName)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: RocketLaunchView()) {
                    Text(AppStrings.RocketDetail.launch)
                        .bold()
                }
        )
    }
    
    @ViewBuilder
    private var overviewView: some View {
        VStack(alignment: .leading) {
            Text(AppStrings.RocketDetail.overview)
                .bold()
            Text(viewModel.rocket.description)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    @ViewBuilder
    private var parametersView: some View {
        Text(AppStrings.RocketDetail.parameters)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
        HStack {
            ForEach(viewModel.getParameters()) { parameter in
                RocketDetailParameterView(parameter: parameter)
            }
        }
        
    }
    
    @ViewBuilder
    private var stagesView: some View {
        VStack {
            RocketDetailStageView(viewModel: RocketDetailStageViewModel(stage: viewModel.rocket.firstStage, stageName: AppStrings.RocketDetail.Stage.firstStage))
            RocketDetailStageView(viewModel: RocketDetailStageViewModel(stage: viewModel.rocket.secondStage, stageName: AppStrings.RocketDetail.Stage.secondStage))
        }
        
    }
    
    @ViewBuilder
    private var photosView: some View {
        Text(AppStrings.RocketDetail.photos)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
        ForEach(viewModel.rocket.flickrImages, id: \.self) { flickrImage in
            RocketDetailPhotoView(imageURLString: flickrImage)
        }
    }
}

struct RocketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailView(viewModel: RocketDetailViewModel(rocket: Rocket.exampleRocket))
    }
}

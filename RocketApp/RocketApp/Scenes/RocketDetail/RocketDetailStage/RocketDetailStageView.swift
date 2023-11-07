//
//  RocketDetailStageView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

struct RocketDetailStageView: View {
    @ObservedObject private var viewModel: RocketDetailStageViewModel
    
    init(viewModel: RocketDetailStageViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: AppConstants.RocketDetail.Stage.cornerRadius)
                .frame(maxWidth: .infinity)
                .foregroundColor(.stageGray)
            textView
        }
    }
    
    @ViewBuilder
    private var textView: some View {
        VStack(alignment: .leading, spacing: AppConstants.RocketDetail.Stage.spacing) {
            Text(viewModel.stageName)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Image("imgReusable")
                if viewModel.isReausable() {
                    Text(AppStrings.RocketDetail.Stage.reusable)
                } else {
                    Text(AppStrings.RocketDetail.Stage.notReusable)
                }
            }
            
            HStack {
                Image("imgEngine")
                if viewModel.hasMultipleEngines() {
                    Text("\(viewModel.stage.engines)") +
                    Text(AppStrings.RocketDetail.Stage.engines)
                } else {
                    Text("\(viewModel.stage.engines)") +
                    Text(AppStrings.RocketDetail.Stage.engine)
                }
            }
            
            HStack {
                Image("imgFuel")
                Text("\(viewModel.getTonsOfFuel())") +
                Text(AppStrings.RocketDetail.Stage.fuel)
            }
            
            HStack {
                Image("imgBurn")
                if viewModel.hasBurnTime() {
                    Text("\(viewModel.stage.burnTimeSec!)") +
                    Text(AppStrings.RocketDetail.Stage.burn)
                }
            }
        }
        .padding(AppConstants.RocketDetail.Stage.padding)
    }
    
}

struct RocketDetailStageView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailStageView(viewModel: RocketDetailStageViewModel(stage: Stage.exampleStage, stageName: "Example name"))
    }
}

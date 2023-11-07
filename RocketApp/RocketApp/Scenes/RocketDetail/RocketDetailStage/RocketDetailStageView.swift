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
            RoundedRectangle(cornerRadius: 10)
                .frame(maxWidth: .infinity)
                .foregroundColor(.stageGray)
            textView
        }
    }
    
    @ViewBuilder
    private var textView: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(viewModel.stageName)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Image("imgReusable")
                if viewModel.isReausable() {
                    Text("reausable")
                } else {
                    Text("not reausable")
                }
            }
            
            HStack {
                Image("imgEngine")
                if viewModel.hasMultipleEngines() {
                    Text("\(viewModel.stage.engines) engines")
                } else {
                    Text("\(viewModel.stage.engines) engine")
                }
            }
            
            HStack {
                Image("imgFuel")
                Text("\(viewModel.getTonsOfFuel()) tons of fuel")
            }
            
            HStack {
                Image("imgBurn")
                if viewModel.hasBurnTime() {
                    Text("\(viewModel.stage.burnTimeSec!) seconds burn time")
                }
            }
        }
        .padding(15)
    }
    
}

struct RocketDetailStageView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailStageView(viewModel: RocketDetailStageViewModel(stage: Stage.exampleStage, stageName: "Example name"))
    }
}

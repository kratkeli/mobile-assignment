//
//  RocketDetailParameterView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

struct RocketDetailParameterView: View {
    let parameter: Parameter
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: AppConstants.RocketDetail.Parameter.cornerRadius)
                .frame(width: AppConstants.RocketDetail.Parameter.width, height: AppConstants.RocketDetail.Parameter.height)
                .foregroundColor(.rocketPink)
            VStack {
                Group {
                    Text(parameter.parameterValue)
                        .font(.largeTitle)
                        .bold()
                    Text(parameter.parameterName)
                        .font(.body)
                }
                .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct RocketDetailParameterView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailParameterView(parameter: Parameter.exampleParameter)
    }
}

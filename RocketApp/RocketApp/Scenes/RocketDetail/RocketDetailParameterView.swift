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
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 100)
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

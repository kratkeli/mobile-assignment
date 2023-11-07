//
//  RocketDetailPhotoView.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI

struct RocketDetailPhotoView: View {
    let imageURLString: String
    
    var body: some View {
        AsyncImage(
            url: URL(string: imageURLString),
            content: { image in
                image.resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(maxWidth: .infinity)
            },
            placeholder: {
                ProgressView()
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct RocketDetailPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetailPhotoView(imageURLString: "https://imgur.com/DaCfMsj.jpg")
    }
}

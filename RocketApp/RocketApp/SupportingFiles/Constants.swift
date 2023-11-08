//
//  Constants.swift
//  RocketApp
//
//  Created by Krátká Eliška on 05.11.2023.
//

import SwiftUI

enum AppConstants {
    enum RocketList {
        enum ListRowInsets {
            static let top: CGFloat = 10
            static let bottom: CGFloat = 10
            static let leading: CGFloat = 20
            static let trailing: CGFloat = 20
        }
        enum ListItem {
            static let spacing: CGFloat = 20
        }
    }
    
    enum RocketDetail {
        static let spacing: CGFloat = 10
        static let padding: CGFloat = 15
        
        enum Parameter {
            static let cornerRadius: CGFloat = 10
            static let width: CGFloat = 100
            static let height: CGFloat = 100
        }
        
        enum Stage {
            static let cornerRadius: CGFloat = 10
            static let spacing: CGFloat = 15
            static let padding: CGFloat = 15
        }
        
        enum Photo {
            static let cornerRadius: CGFloat = 10
        }
    }
    
    enum RocketLaunch {
        static let bottomPadding: CGFloat = 100
        static let xOffset: CGFloat = 0
        static let yOffset: CGFloat = 0
        static let yOffsetAfterLaunch: CGFloat = -UIScreen.main.bounds.height
        static let animationDuration: CGFloat = 1
    }
}

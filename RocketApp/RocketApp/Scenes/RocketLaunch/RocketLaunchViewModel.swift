//
//  RocketLaunchViewModel.swift
//  RocketApp
//
//  Created by Krátká Eliška on 07.11.2023.
//

import SwiftUI
import CoreMotion

final class RocketLaunchViewModel: ObservableObject {
    @Published var rocketImageString: String = "imgRocketIdle"
    @Published var rocketYOffset: CGFloat = AppConstants.RocketLaunch.yOffset
    @Published var description: String = AppStrings.RocketLaunch.beforeLaunch
    
    private let motionManager: CMMotionManager =  CMMotionManager()
    
    /// Detects when the device is inclined and launches the rocket.
    func monitorDeviceMotion() {
        if motionManager.isDeviceMotionAvailable {
            motionManager.deviceMotionUpdateInterval = 0.1
            motionManager.startDeviceMotionUpdates(to: .main) { data, error in
                guard let data = data, error == nil else {
                    print("Device motion data unavailable")
                    return
                }
                
                let pitch = data.attitude.pitch
                
                if abs(pitch) > 1 {
                    self.launchRocket()
                }
            }
        } else {
            print("Device motion not available")
        }
    }
    
    /// Makes the rocket fly over the edge of the screen.
    private func launchRocket() {
        rocketImageString = "imgRocketFlying"
        description = AppStrings.RocketLaunch.launchSuccessfull
        withAnimation(Animation.linear(duration: AppConstants.RocketLaunch.animationDuration)) {
            rocketYOffset = AppConstants.RocketLaunch.yOffsetAfterLaunch
        }
    }
    
    /// Returns rocket back to the start position.
    func resetRocket() {
        rocketImageString = "imgRocketIdle"
        rocketYOffset = AppConstants.RocketLaunch.yOffset
        description = AppStrings.RocketLaunch.beforeLaunch
    }
}

//
//  FrutusApp.swift
//  Frutus
//
//  Created by Nicholes Guillory on 1/27/23.
//

import SwiftUI

@main
struct FrutusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

//
//  UsingUIApp.swift
//  UsingUI
//
//  Created by Ruchir on 7/25/21.
//

import SwiftUI

@main
struct UsingUIApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView();
            }
            
        }
    }
}

//
//  UsingUIApp.swift
//  UsingUI
//
//  Created by Ruchir on 7/25/21.
//

import SwiftUI

@main
struct UsingUIApp: App {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
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

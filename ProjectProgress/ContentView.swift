//
//  ContentView.swift
//  ProjectProgress
//
//  Created by Simon Studen on 11/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var onboardingManager = OnboardingManager()

    var body: some View {
        if onboardingManager.showOnboarding {
            NavigationView {
                OnboardingView1()
                    .environmentObject(onboardingManager)
            }
        } else {
            HomepageView()
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

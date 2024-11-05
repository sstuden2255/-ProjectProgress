//
//  OnboardingViews.swift
//  ProjectProgress
//
//  Created by Simon Studen on 11/5/24.
//

import SwiftUI

extension UserDefaults {
    private enum Keys {
        static let hasCompletedOnboarding = "hasCompletedOnboarding"
    }

    var hasCompletedOnboarding: Bool {
        get { bool(forKey: Keys.hasCompletedOnboarding) }
        set { set(newValue, forKey: Keys.hasCompletedOnboarding) }
    }
}

struct OnboardingView1: View {
    @EnvironmentObject var onboardingManager: OnboardingManager
    
    var body: some View {
        VStack {
            Text("Welcome to the App!")
                .font(.largeTitle)
            Text("This is a brief description of what the app does.")
            Spacer()
            NavigationLink("Next", destination: OnboardingView2()
                    .environmentObject(onboardingManager)
            )
        }
        .padding()
    }
}

struct OnboardingView2: View {
    @EnvironmentObject var onboardingManager: OnboardingManager
    
    var body: some View {
        VStack {
            Text("Track your skills")
                .font(.largeTitle)
            Text("Learn and track your skill progress with ease.")
            Spacer()
            NavigationLink("Next", destination: OnboardingView3()
                    .environmentObject(onboardingManager))
            
        }
        .padding()
    }
}

struct OnboardingView3: View {
    @EnvironmentObject var onboardingManager: OnboardingManager

    var body: some View {
        VStack {
            Text("Earn Achievements")
                .font(.largeTitle)
            Text("Unlock achievements as you develop your skills.")
            Spacer()
            Button(action: {
                onboardingManager.completeOnboarding()
            }) {
                Text("Get Started")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    OnboardingView3()
}

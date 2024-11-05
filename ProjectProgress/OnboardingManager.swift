//
//  OnboardingManager.swift
//  ProjectProgress
//
//  Created by Simon Studen on 11/5/24.
//

import SwiftUI

class OnboardingManager: ObservableObject {
    @Published var showOnboarding: Bool

    init() {
        self.showOnboarding = !UserDefaults.standard.hasCompletedOnboarding
    }

    func completeOnboarding() {
        UserDefaults.standard.hasCompletedOnboarding = true
        showOnboarding = false
    }
}

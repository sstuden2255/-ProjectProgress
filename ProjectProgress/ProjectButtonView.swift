//
//  ProjectButtonView.swift
//  ProjectProgress
//
//  Created by Simon Studen on 9/4/24.
//

import SwiftUI

struct ProjectButtonView: View {
    var iconName: String
    
    var body: some View {
        NavigationLink(destination: ProjectView()) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.ultraThinMaterial)
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 200, maxHeight: 200)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.aquamarine.opacity(0.7), Color.aquamarine.opacity(0.5)]),
                            startPoint: .top,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(maxWidth: .infinity, minHeight: 200, maxHeight: 200)
                    .overlay(
                        GlowingIconView(iconName: iconName, iconColor: .white, shadowColor: .white)
                    )
            }
        }
    }
}

#Preview {
    ProjectButtonView(iconName: "chevron.left.slash.chevron.right")
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

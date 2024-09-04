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
                    .frame(width: 210, height: 160)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.aquamarine.opacity(0.9), Color.aquamarine.opacity(0.7)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 190, height: 140)
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

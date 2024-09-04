//
//  GlowingIconView.swift
//  ProjectProgress
//
//  Created by Simon Studen on 9/4/24.
//

import SwiftUI

struct GlowingIconView: View {
    var iconName: String
    var iconColor: Color // TODO: make icon color toggle based on color scheme
    var shadowColor: Color
    
    var body: some View {
        Image(systemName: iconName)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .foregroundColor(iconColor)
            .shadow(color: .white, radius: 10) // Glow effect
            .overlay(
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(iconColor)
                    .blur(radius: 10)
            )
    }
}

#Preview {
    GlowingIconView(iconName: "chevron.left.slash.chevron.right", iconColor: .white, shadowColor: .white)
        .preferredColorScheme(.dark)
}

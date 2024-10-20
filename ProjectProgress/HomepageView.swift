//
//  HomepageView.swift
//  ProjectProgress
//
//  Created by Simon Studen on 6/22/24.
//

import SwiftUI

extension Color {
    static let teaGreen = Color(red: 189 / 255, green: 247 / 255, blue: 183 / 255)
    
    static let aquamarine = Color(red: 144 / 255, green: 255 / 255, blue: 220 / 255)
}

struct HomepageView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    featuredSection
                }
                .padding()
            }
            .navigationTitle("Projects")
        }
        .ignoresSafeArea()
    }
    
    var featuredSection: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    ForEach(0..<5) { item in
                        ProjectButtonView(iconName: "chevron.left.slash.chevron.right")
                    }
                }
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    HomepageView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

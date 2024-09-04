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
                    categoriesSection
                    recentItemsSection
                }
                .padding()
            }
            .navigationTitle("Projects")
        }
        .ignoresSafeArea()
    }
    
    var featuredSection: some View {
            VStack(alignment: .leading) {
                Text("My Projects")
                    .font(.title2)
                    .fontWeight(.semibold)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(0..<5) { item in
                            ProjectButtonView(iconName: "chevron.left.slash.chevron.right")
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
        }
        
        var categoriesSection: some View {
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.semibold)
                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    ForEach(0..<6) { item in
                        VStack {
                            Circle()
                                .fill(Color.aquamarine)
                                .frame(width: 80, height: 80)
                            Text("Category \(item + 1)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                }
                .padding(.vertical, 10)
            }
        }
        
        var recentItemsSection: some View {
            VStack(alignment: .leading) {
                Text("Recent Items")
                    .font(.title2)
                    .fontWeight(.semibold)
                ForEach(0..<10) { item in
                    HStack {
                        Rectangle()
                            .fill(Color.aquamarine.opacity(0.7))
                            .frame(width: 50, height: 50)
                            .cornerRadius(5)
                            .shadow(color: .aquamarine, radius: 2)
                        VStack(alignment: .leading) {
                            Text("Item \(item + 1)")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("Description of item \(item + 1)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(.vertical, 5)
                }
            }
        }}

#Preview {
    HomepageView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

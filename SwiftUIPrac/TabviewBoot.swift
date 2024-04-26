//
//  TabviewBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 25/02/24.
//

import SwiftUI

struct TabviewBoot: View {
    var body: some View {
        TabView(content: {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            HomeView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Cart")
                }
            HomeView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        })
        .accentColor(.custom)
        .background(Color.white)
    }
}

#Preview {
    TabviewBoot()
}

struct HomeView: View {
    var body: some View {
        ZStack  {
            Color.gray.opacity(0.5).ignoresSafeArea()
            Text("Home View")
        }
    }
}

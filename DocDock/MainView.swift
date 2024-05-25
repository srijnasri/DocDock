//
//  MainView.swift
//  DocDock
//
//  Created by Srijnasri Negi on 25/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
            ChatsView()
                .tabItem { Label("Chats", systemImage: "message.fill") }
            NetworkView()
                .tabItem { Label("Requests", systemImage: "heart.fill") }
        }
        
    }
}

#Preview {
    MainView()
}

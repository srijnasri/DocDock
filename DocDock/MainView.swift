//
//  MainView.swift
//  DocDock
//
//  Created by Srijnasri Negi on 25/05/24.
//

import SwiftUI
import GoogleSignIn

struct MainView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem { Label("Home", systemImage: "house.fill") }
                ChatsView()
                    .tabItem { Label("Chats", systemImage: "message.fill") }
                NetworkView()
                    .tabItem { Label("Requests", systemImage: "heart.fill") }
            }
            .toolbar {
                Button {
                    signOut()
                    dismiss()
                } label: {
                    Text("Logout")
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    func signOut() {
        GIDSignIn.sharedInstance.signOut()
        UserDefaults.standard.setValue(false, forKey: "IsUserSignIn")
    }
}

#Preview {
    MainView()
}

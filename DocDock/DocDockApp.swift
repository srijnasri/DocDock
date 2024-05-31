//
//  DocDockApp.swift
//  DocDock
//
//  Created by Srijnasri Negi on 23/05/24.
//

import SwiftUI
import GoogleSignIn

@main
struct DocDockApp: App {
    let isUserSignedIn = UserDefaults.standard.bool(forKey: "IsUserSignIn")
    
    var body: some Scene {
        WindowGroup {
            if isUserSignedIn {
                MainView()
            } else {
                DocDockSplashView()
                    .onOpenURL { url in
                        GIDSignIn.sharedInstance.handle(url)
                    }
                    .onAppear {
                        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
                            // Check if `user` exists; otherwise, do something with `error`
                            guard error == nil else { return }
                        }
                    }
            }
        }
    }
}

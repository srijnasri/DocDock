//
//  DocDockSplash.swift
//  DocDock
//
//  Created by Srijnasri Negi on 23/05/24.
//

import SwiftUI

struct DocDockSplashView: View {
    @State var isActive = false
    var body: some View {
        ZStack {
            if isActive {
                LoginView()
            } else {
                LinearGradient(colors: [.pink, .orange, .yellow], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .opacity(0.8)
                VStack {
                    Text("This is DocDock-verse")
                    Text("Welcome.")
                    Image(systemName: "heart.fill")
                }
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isActive = true
            }
        })
    }
}

#Preview {
    DocDockSplashView()
}

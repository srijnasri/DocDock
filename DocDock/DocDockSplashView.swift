//
//  DocDockSplash.swift
//  DocDock
//
//  Created by Srijnasri Negi on 23/05/24.
//

import SwiftUI

struct DocDockSplashView: View {
    var body: some View {
        ZStack {
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
}

#Preview {
    DocDockSplashView()
}

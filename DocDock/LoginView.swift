//
//  ContentView.swift
//  DocDock
//
//  Created by Srijnasri Negi on 23/05/24.
//

import SwiftUI

struct LoginView: View {
    @State var email: String
    @State var password: String
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.pink, .orange, .yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(0.8)
            VStack(spacing: 20) {
                Text("DocDock")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Text("Sign in with email")
                    .font(.title)
                    .fontWeight(.bold)
                VStack(spacing: 10) {
                    TextField("Email", text: $email, prompt: Text("Email"))
                    .textContentType(.emailAddress)
                    SecureField("Password", text: $password, prompt: Text("Password"))
                    .textContentType(.password)
                }
                .textFieldStyle(.roundedBorder)
                .foregroundStyle(.gray)
                .padding([.leading, .trailing])
                Button(action: {}, label: {
                    Text("Sign In")
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .padding()
                        .background(.pink, in: Capsule())
                        .opacity(0.7)
                })
                Text("Or Log in with")
                    .font(.title)
                    .fontWeight(.bold)
                HStack(spacing: 30) {
                    VStack {
                        Image("gmail")
                            .resizable()
                        .frame(width: 50, height: 50)
                        Text("Gmail")
                            .font(.caption)
                    }
                    VStack {
                        Image("facebook")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Facebook")
                            .font(.caption)
                    }
                    VStack {
                        Image("email")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Email")
                            .font(.caption)
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView(email: "123@dummy.com", password: "1233456")
}

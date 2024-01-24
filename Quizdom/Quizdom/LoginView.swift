//
//  LoginView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/23/24.
//

import SwiftUI


struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image("mediumLogo")
            Text("Quizdom")
                .font(.custom("MoiraiOne-Regular", size: 60))
            Text("Your daily dose of knowledge")
                .monospaced()
                .italic()
                .font(.subheadline)
        }
        
        .padding(50)
        
        ZStack {
            List{
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
            }
            .listStyle(.plain)
            
            HStack {
                Button ("Login") {
                    print("tapped")
                }
                        .frame(width: 100, height: 100)
                        .buttonStyle(.bordered)
                        .tint(.blue)
                        .monospaced()
                        

                Button ("Sign Up") {
                    print("tapped")
                }
                        .frame(width: 100, height: 100)
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        .monospaced()
                        
                    
                
            }
            
        
        }
        .padding()
        
        VStack {
            Button {
                print("tapped")
            } label: {
                Text("Forgot Password")
                    .italic()
                    .tint(.gray)
            }
        }
        
        
        
        Spacer()
    }
}

#Preview {
    LoginView()
}
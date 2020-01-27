//
//  AccueilView.swift
//  wibash
//
//  Created by Anthony Colvil on 24/01/2020.
//  Copyright © 2020 Anthony Colvil. All rights reserved.
//

import SwiftUI


struct AccueilView: View {
    @State var name : String = ""
    @State var password : String = ""
        var body: some View {
                VStack(alignment : .center){
                        Text("WI-Bash")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.red)
                            .frame(width: 300.0, height: 120.0)
                            .edgesIgnoringSafeArea(.horizontal)
    
    
                        Spacer()
                        Spacer()
                        Spacer()
    
                        TextField("Login ou mail", text: $name)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(15.0)
    
                        SecureField("Mot de passe", text: $password)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(15.0)
    
                        Spacer()
                        Button(action:{
    
                        }) {
                            Text("connexion")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.red, lineWidth: 5)
                                )
    
                        }
    
                        Spacer()
                        Spacer()
    
                    }
    
                .padding()
            }
}

struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
    }
}

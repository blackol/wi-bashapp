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
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .padding(10)
                             
    
                        }
                    Spacer()
                    Button(action:{
                        
                    } ){
                        Text("S'inscrire")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: 440.0, height: 100.0)
                            .background(Color.red)
                            .padding(.vertical, 10)
                            .edgesIgnoringSafeArea(.horizontal)
                    }
    
                    }
    
                .padding()
            }
}

struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
    }
}

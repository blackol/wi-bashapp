//
//  ContentView.swift
//  wibash
//
//  Created by Anthony Colvil on 24/01/2020.
//  Copyright © 2020 Anthony Colvil. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name : String = ""
    @State var password : String = ""
    
    var body: some View {
        VStack(alignment : .center){
            Text("WI-Bash")
                .font(.title)
                .foregroundColor(.red)
                .frame(width: 400.0, height: 200.0)
                .background(Color.black)
            
            
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
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("connexion")
                    .frame(width: 150, height: 30)
                    .foregroundColor(.white)
                    .background(Color.orange)
//                commentaire
                    
            }
            Spacer()
            Spacer()
            
        }
            .padding()
        
        
    }
    

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

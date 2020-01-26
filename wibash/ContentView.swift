//
//  ContentView.swift
//  wibash
//
//  Created by Anthony Colvil on 24/01/2020.
//  Copyright © 2020 Anthony Colvil. All rights reserved.
//

import SwiftUI

/// <#Description#>
struct ContentView: View {
    @State var isActive : Bool = true
//    NavigationView {
//    dans le bouton

        @State var Menu = false
        var body: some View {
            let drag = DragGesture()
                .onEnded {
                    if $0.translation.width < -100 {
                        withAnimation{
                            self.Menu = true
                        }
                    }
            }
            return NavigationView {
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                       MainView(Menu: self.$Menu)
                           .frame(width: geometry.size.width, height: geometry.size.height)
                           .offset(x: self.Menu ? geometry.size.width/2 : 0)
                           .disabled(self.Menu ? true : false)
                       if self.Menu {
                            MenuView()
                           .frame(width: geometry.size.width/2)
                               .transition(.move(edge: .leading))
                       }
                   }
                .gesture(drag)
                }
                .navigationBarTitle("Wi-Bash", displayMode: .inline)
                .navigationBarItems(leading:(
                    Button( action: {
                        withAnimation{
                            self.Menu.toggle()
                        }
                    }){
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                ))
                NavigationLink(destination: AccueilView(), isActive: self.$isActive){
                Text("lol")
                }
                
            }
        }
    }

    struct MainView: View {
        @Binding var Menu: Bool
        var body: some View {
            Button(action: {
                withAnimation{
                 self.Menu = true
                }
            }) {
                Text("")
            }
        }
    }



    
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

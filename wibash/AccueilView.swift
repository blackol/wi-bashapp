//
//  AccueilView.swift
//  wibash
//
//  Created by Anthony Colvil on 24/01/2020.
//  Copyright © 2020 Anthony Colvil. All rights reserved.
//

import SwiftUI

struct AccueilView: View {
    var body: some View {
        GeometryReader { geometry in
            MainView()
                .frame(width: geometry.size.width, height:geometry.size.height )
        }
    }
}

struct MainView: View {
    var body: some View {
        Button(action: {
            print("open side menu")
        }) {
            Text("Menu")
        }
    }
}

struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
    }
}

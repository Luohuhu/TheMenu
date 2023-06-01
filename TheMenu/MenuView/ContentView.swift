//
//  ContentView.swift
//  TheMenu
//
//  Created by Xianfu on 5/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to The Menu")
                Text("Click the button to browse recipes")
                Spacer()
                NavigationLink(destination: MenuView(viewModel: DessertPreviewModel()).navigationBarBackButtonHidden(true)){
                    Text("Recipes")
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

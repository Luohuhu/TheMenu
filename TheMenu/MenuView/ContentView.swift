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
                    .font(.largeTitle)
                    .foregroundColor(.brown)
                    .fontWeight(.bold)
                Spacer()
                // random pic here
                AsyncImage(url: URL(string: "https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg"), scale: 2).cornerRadius(360.0)
                Spacer()
                Text("Click the button to browse recipes of Dessert")
                    .foregroundColor(.gray)
                NavigationLink(destination: MenuView(viewModel: DessertPreviewModel()).navigationBarBackButtonHidden(true)){
                    Text("Recipes")
                        .padding()
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200)
                        .shadow(radius: 5)
                        .background(
                            Capsule()
                                .foregroundColor(.brown)
                                .padding(.horizontal, -10)
                        )
                        
                }
            }
            .padding()
        }.background(Color(red: 0.95, green: 0.95, blue: 0.95))
    }
}
// handle the situation that user want to back to the first page
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

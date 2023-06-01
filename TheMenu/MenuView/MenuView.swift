//
//  MenuView.swift
//  TheMenu
//
//  Created by 罗贤甫 on 5/31/23.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var viewModel: DessertPreviewModel
    var body: some View {
        VStack{
            Text("Dessert Category").font(.largeTitle).foregroundColor(.white)
            List(viewModel.mealsData) { mealData in
                DessertCellView(dessert: mealData)
            }
        }.background(Color(.brown))
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(viewModel: .init())
    }
}

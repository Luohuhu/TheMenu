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
        //Text(viewModel.mealsData[0].strMeal)
        List(viewModel.mealsData) { mealData in
            DessertCellView(dessert: mealData)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(viewModel: .init())
    }
}

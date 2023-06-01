//
//  DessertCellView.swift
//  TheMenu
//
//  Created by 罗贤甫 on 6/1/23.
//

import SwiftUI

struct DessertCellView: View {
    @State var dessert: DessertData
    var body: some View {
        NavigationLink(destination: DessertDetailView(viewModel: .init(dessertData: dessert))) {
            AsyncImage(url: URL(string: dessert.imgURL), scale: 10).cornerRadius(20.0)
            Text(dessert.name).foregroundColor(.brown)
        }
    }
}

struct DessertCellView_Previews: PreviewProvider {
    static var previews: some View {
        DessertCellView(dessert: DessertData(name: "name", imgURL: "https://www.themealdb.com/images/media/meals/rwuyqx1511383174.jpg", id: "52902"))
    }
}

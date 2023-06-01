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
            Text(dessert.name)
        }
    }
}

struct DessertCellView_Previews: PreviewProvider {
    static var previews: some View {
        DessertCellView(dessert: DessertData(name: "name", imgURL: "image", id: "id"))
    }
}

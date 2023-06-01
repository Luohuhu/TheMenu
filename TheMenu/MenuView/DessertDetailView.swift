//
//  DessertDetailView.swift
//  TheMenu
//
//  Created by 罗贤甫 on 6/1/23.
//

import SwiftUI

struct DessertDetailView: View {
    @ObservedObject var viewModel: DessertDetailViewModel
    var body: some View {
        Text(viewModel.dessertData.id)
    }
}

struct DessertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DessertDetailView(viewModel: .init(dessertData: DessertData(name: "name", imgURL: "image", id: "id")))
    }
}
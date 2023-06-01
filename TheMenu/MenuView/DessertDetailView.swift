//
//  DessertDetailView.swift
//  TheMenu
//
//  Created by Xianfu on 6/1/23.
//

import SwiftUI
//let smallSize = 32

struct DessertDetailView: View {
    @ObservedObject var viewModel: DessertDetailViewModel
    var body: some View {
        let smallSize: CGFloat = 15
        let largeSize: CGFloat = 27.5
        let mediumUpSize: CGFloat = 20
        let mediumDownSize: CGFloat = 17.5
        ScrollView{
            if let data = viewModel.detailData {
                VStack {
                    HStack {
                        Text(data.strMeal)
                            .font(.system(size: largeSize, weight: .heavy))
                            .foregroundColor(Color.white)
                    }
                    AsyncImage(url: URL(string: data.strMealThumb), scale: 2.5)
                    HStack {
                        Text("INGREDIENTS")
                            .font(.system(size: mediumUpSize, weight: .bold))
                            .foregroundColor(Color.gray)
                        Spacer()
                    }.padding(.vertical, 3)
                    
                    ForEach(data.IMPairList, id: \.self){ im in
                        HStack {
                            Text(im.strIngredient!+":")
                                .font(.system(size: smallSize))
                                .foregroundColor(Color.white)
                            Text(im.strMeasure!)
                                .font(.system(size: smallSize, weight: .bold))
                                .foregroundColor(Color.white)
                            Spacer()
                        }.padding(.horizontal)
                    }
                    HStack {
                        Text("INSTRUCTIONS")
                            .font(.system(size: mediumUpSize, weight: .bold))
                            .foregroundColor(Color.gray)
                        Spacer()
                    }.padding(.vertical, 3)
                    
                    let instruction = data.strInstructions.components(separatedBy: "\n").filter{ step in
                        return step.count>1
                    }
                    ForEach(Array(instruction.enumerated()), id: \.offset){ index,step in
                        Text("Step\(index+1)")
                            .font(.system(size: mediumDownSize, weight: .bold))
                            .foregroundColor(Color.white)
                        HStack {
                            Text(step)
                                .padding(.horizontal, 10)
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                    }
                }
            }
        }.background(Color(.brown))
    }
}

struct DessertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DessertDetailView(viewModel: .init(dessertData: DessertData(name: "name", imgURL: "https://www.themealdb.com/images/media/meals/qxuqtt1511724269.jpg", id: "52902")))
    }
}

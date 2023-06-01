//
//  DessertDetailData.swift
//  TheMenu
//
//  Created by 罗贤甫 on 6/1/23.
//

import Foundation

struct DessertDetailData : Decodable, Hashable {
    let strMeal: String
    let strInstructions: String
    let strMealThumb: String
    let strIngredient1: String?
    let strMeasure1: String?
    let strIngredient2: String?
    let strMeasure2: String?
    let strIngredient3: String?
    let strMeasure3: String?
    let strIngredient4: String?
    let strMeasure4: String?
    let strIngredient5: String?
    let strMeasure5: String?
    let strIngredient6: String?
    let strMeasure6: String?
    let strIngredient7: String?
    let strMeasure7: String?
    let strIngredient8: String?
    let strMeasure8: String?
    let strIngredient9: String?
    let strMeasure9: String?
    let strIngredient10: String?
    let strMeasure10: String?
    let strIngredient11: String?
    let strMeasure11: String?
    let strIngredient12: String?
    let strMeasure12: String?
    let strIngredient13: String?
    let strMeasure13: String?
    let strIngredient14: String?
    let strMeasure14: String?
    let strIngredient15: String?
    let strMeasure15: String?
    let strIngredient16: String?
    let strMeasure16: String?
    let strIngredient17: String?
    let strMeasure17: String?
    let strIngredient18: String?
    let strMeasure18: String?
    let strIngredient19: String?
    let strMeasure19: String?
    let strIngredient20: String?
    let strMeasure20: String?
}
struct IMPair: Hashable {
    let strIngredient: String?
    let strMeasure: String?
}

// filter nil and empty value
extension DessertDetailData {
    //typealias IMPair = (strIngredient: String?, strMeasure: String?)
    var IMPairList :[IMPair] {
        [IMPair(strIngredient: strIngredient1, strMeasure: strMeasure1),
         IMPair(strIngredient: strIngredient2, strMeasure: strMeasure2),
         IMPair(strIngredient: strIngredient3, strMeasure: strMeasure3),
         IMPair(strIngredient: strIngredient4, strMeasure: strMeasure4),
         IMPair(strIngredient: strIngredient5, strMeasure: strMeasure5),
         IMPair(strIngredient: strIngredient6, strMeasure: strMeasure6),
         IMPair(strIngredient: strIngredient7, strMeasure: strMeasure7),
         IMPair(strIngredient: strIngredient8, strMeasure: strMeasure8),
         IMPair(strIngredient: strIngredient9, strMeasure: strMeasure9),
         IMPair(strIngredient: strIngredient10, strMeasure: strMeasure10),
         IMPair(strIngredient: strIngredient11, strMeasure: strMeasure11),
         IMPair(strIngredient: strIngredient12, strMeasure: strMeasure12),
         IMPair(strIngredient: strIngredient13, strMeasure: strMeasure13),
         IMPair(strIngredient: strIngredient14, strMeasure: strMeasure14),
         IMPair(strIngredient: strIngredient15, strMeasure: strMeasure15),
         IMPair(strIngredient: strIngredient16, strMeasure: strMeasure16),
         IMPair(strIngredient: strIngredient17, strMeasure: strMeasure17),
         IMPair(strIngredient: strIngredient18, strMeasure: strMeasure18),
         IMPair(strIngredient: strIngredient19, strMeasure: strMeasure19),
         IMPair(strIngredient: strIngredient20, strMeasure: strMeasure20),
        ].filter{!($0.strIngredient ?? "").isEmpty && !($0.strMeasure ?? "").isEmpty}
    }
}

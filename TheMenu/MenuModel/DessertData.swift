//
//  DessertData.swift
//  TheMenu
//
//  Created by 罗贤甫 on 5/31/23.
//

import Foundation
import SwiftUI

struct DessertData : Decodable, Identifiable {
    var name: String
    var imgURL: String
    var id: String
    enum CodingKeys: String, CodingKey {
            case name = "strMeal"
            case imgURL = "strMealThumb"
            case id = "idMeal"
        }
}



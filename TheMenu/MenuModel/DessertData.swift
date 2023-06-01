//
//  DessertData.swift
//  TheMenu
//
//  Created by Xianfu on 5/31/23.
//

import Foundation
import SwiftUI

struct DessertData : Decodable, Identifiable {
    let name: String
    let imgURL: String
    let id: String
    enum CodingKeys: String, CodingKey {
            case name = "strMeal"
            case imgURL = "strMealThumb"
            case id = "idMeal"
        }
}



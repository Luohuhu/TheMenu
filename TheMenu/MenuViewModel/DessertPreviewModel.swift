//
//  DessertPreviewModel.swift
//  TheMenu
//
//  Created by 罗贤甫 on 5/31/23.
//

import Foundation

class DessertPreviewModel: ObservableObject {
    @Published var mealsData: [DessertData] = []
    init(){
        let DessertPreviewURL = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
        self.Request(urlString: DessertPreviewURL)
    }
    
    func Request(urlString: String){
        if let url=URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){
                (data, respone, error) in
                if let dessertData = data {
                    self.mealsData = self.parseJSON(dessertData: dessertData)!
                }
            }
            task.resume()
        }
    }
    func parseJSON(dessertData: Data) -> [DessertData]?{
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(Meals.self, from: dessertData)
            return decodeData.meals
        }catch{
            return nil
        }
    }
}

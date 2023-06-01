//
//  DessertPreviewModel.swift
//  TheMenu
//
//  Created by Xianfu on 5/31/23.
//

import Foundation

class DessertPreviewModel: ObservableObject {
    @Published var mealsData: [DessertData] = []
    init(){
        //url for category
        let DessertPreviewURL = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
        self.Request(urlString: DessertPreviewURL)
    }
    // use url session to get the result
    func Request(urlString: String){
        if let url=URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){
                (data, respone, error) in
                if let errorInfo = error {
                    print("Network error: \(errorInfo.localizedDescription).")
                    return
                }
                if let dessertData = data {
                    self.mealsData = self.parseJSON(dessertData: dessertData)!
                    // sort alphabetically just in case
                    self.mealsData.sort{
                        $0.name < $1.name
                    }
                }
            }
            task.resume()
        }
    }
    // parse json to dessert model
    func parseJSON(dessertData: Data) -> [DessertData]?{
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(Meals.self, from: dessertData)
            return decodeData.meals
        }catch{
            print("Unexpected error: \(error).")
            return nil
        }
    }
}

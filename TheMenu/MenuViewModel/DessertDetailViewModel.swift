//
//  DessertDetailViewModel.swift
//  TheMenu
//
//  Created by Xianfu on 6/1/23.
//

import Foundation
import Combine

class DessertDetailViewModel: ObservableObject {
    @Published var detailData: DessertDetailData?
    let objectWillChange: AnyPublisher<DessertPreviewModel, Never>
    let objectWillChangeSubject = PassthroughSubject<DessertPreviewModel, Never>()
        
    let dessertData: DessertData
    init(dessertData: DessertData) {
        objectWillChange = objectWillChangeSubject.eraseToAnyPublisher()
        self.dessertData = dessertData
        // use id to generate the new url
        let url = "https://themealdb.com/api/json/v1/1/lookup.php?i=\(dessertData.id)"
        self.Request(urlString: url)
    }
    // fetch result
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
                    self.detailData = self.parseJSON(dessertData: dessertData)
                }
            }
            task.resume()
        }
    }
    // parse json to dessert detail model
    func parseJSON(dessertData: Data) -> DessertDetailData?{
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(MealsDetail.self, from: dessertData)
            return decodeData.meals[0]
        }catch{
            print("Unexpected error: \(error).")
            return nil
        }
    }
}

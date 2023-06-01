//
//  DessertDetailViewModel.swift
//  TheMenu
//
//  Created by 罗贤甫 on 6/1/23.
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
        let url = "https://themealdb.com/api/json/v1/1/lookup.php?i=\(dessertData.id)"
        self.Request(urlString: url)
    }
    
    func Request(urlString: String){
        if let url=URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){
                (data, respone, error) in
                if let dessertData = data {
                    self.detailData = self.parseJSON(dessertData: dessertData)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(dessertData: Data) -> DessertDetailData?{
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(MealsDetail.self, from: dessertData)
            return decodeData.meals[0]
        }catch{
            return nil
        }
    }
}

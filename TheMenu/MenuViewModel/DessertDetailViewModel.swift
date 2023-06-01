//
//  DessertDetailViewModel.swift
//  TheMenu
//
//  Created by 罗贤甫 on 6/1/23.
//

import Foundation
import Combine

class DessertDetailViewModel: ObservableObject {
    let objectWillChange: AnyPublisher<DessertPreviewModel, Never>
    let objectWillChangeSubject = PassthroughSubject<DessertPreviewModel, Never>()
        
    let dessertData: DessertData
    init(dessertData: DessertData) {
        objectWillChange = objectWillChangeSubject.eraseToAnyPublisher()
        self.dessertData = dessertData
    }
}

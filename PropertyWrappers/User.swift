//
//  User.swift
//  PropertyWrappers
//
//  Created by Mac on 28/07/21.
//

import Foundation

class User: ObservableObject {
    
    @Published var name: String
    @Published var luckyNumber: Int
    
    //By default is internal init
    init(name: String, luckyNumber: Int) {
        self.name = name
        self.luckyNumber = luckyNumber
    }
}

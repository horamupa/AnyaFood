//
//  Food.swift
//  AnyaFood
//
//  Created by MM on 27.05.2023.
//

import Foundation

protocol MenuItems: Hashable, Identifiable {
    
    typealias menuPath = MenuItems
    var id: String {get}
    var name: String {get}
    var ingredients: [String] {get}
    var description: String {get}
    var image: String {get}
}

struct Food: Identifiable, Hashable, MenuItems {
    var id = UUID().uuidString
    var name: String
    var ingredients: [String]
    var description: String
    var image: String
    
    static let shared = Food(name: "Roasted Chiken", ingredients: ["Chiken himself", "Rosmary", "Salt", "Papper"], description: "Take a good fresh chiken and roast it with spicies to the point of your enjoyment at temp 180c", image: "RC")
}

struct Drink: Identifiable, Hashable, MenuItems {
    var id = UUID().uuidString
    var name: String
    var ingredients: [String]
    var description: String
    var isFizzy: Bool
    var image: String
    
    static let drinks = [Drink(name: "Water", ingredients: ["Water"], description: "Liquid Food", isFizzy: false, image: "StillWater"),
                         Drink(name: "Sparkling Water", ingredients: ["Water", "Carbon"], description: "Jidkaya eda s gazikami", isFizzy: true, image: "FunnyWater")]
}

struct Desert: Identifiable, Hashable, MenuItems {
    var id = UUID().uuidString
    var name: String
    var ingredients: [String]
    var description: String
    var image: String
    
    static let deserts = [Desert(name: "Tiramisu", ingredients: ["Habib", "Batya habiba", "Smesh", "Ground and pound"], description: "Habib Babib", image: "tiramisu"),
                          Desert(name: "Medovik", ingredients: ["Honey", "Korji", "Sgushenka?"], description: "Eto Medovik brother kushay na zdorovye", image: "medovik")]
}

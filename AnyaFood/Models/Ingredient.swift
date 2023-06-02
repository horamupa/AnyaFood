//
//  Ingredient.swift
//  AnyaFood
//
//  Created by MM on 31.05.2023.
//

import SwiftUI

struct Ingredient: Identifiable, Equatable {
    var id = UUID().uuidString
    var name: String
    var description: String
    
    static var shared = Ingredient(name: "Carrot", description: "Carrot is for rabbits and for good boys and girls! mmm yami!")
}

//
//  AllRecepieViewModel.swift
//  AnyaFood
//
//  Created by MM on 27.05.2023.
//

import SwiftUI

class AllRecipeViewModel: ObservableObject {
    
    @Published var foods: [Food] = [Food.shared]
    @Published var drinks: [Drink] = Drink.drinks
    @Published var deserts: [Desert] = Desert.deserts
}

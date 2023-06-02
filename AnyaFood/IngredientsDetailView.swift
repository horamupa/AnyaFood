//
//  IngredientsDetailView.swift
//  AnyaFood
//
//  Created by MM on 31.05.2023.
//

import SwiftUI

struct IngredientsDetailView: View {
    
    var ingredients: [Ingredient]
    var body: some View {
        VStack {
            ForEach(ingredients) { ingredient in
                /*@START_MENU_TOKEN@*/Text(ingredient.name)/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct IngredientsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsDetailView(ingredients: [Ingredient.shared])
    }
}

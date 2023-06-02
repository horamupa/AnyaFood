//
//  FoodDetailView.swift
//  AnyaFood
//
//  Created by MM on 27.05.2023.
//

import SwiftUI

struct MenuDetailView: View {
    var menuItem: any MenuItems
    var body: some View {
        ZStack {
            VStack {
                Image(menuItem.image)
                    .resizable()
                    .scaledToFit()
                Text(menuItem.name)
                Text(menuItem.description)
            }
        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(menuItem: Food.shared)
    }
}

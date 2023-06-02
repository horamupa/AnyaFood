//
//  FoodRowView.swift
//  AnyaFood
//
//  Created by MM on 27.05.2023.
//

import SwiftUI

struct MenuRowView: View {
    var food: any MenuItems
    
    var body: some View {
        HStack(alignment: .top) {
            Image(food.image)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipped()
                .cornerRadius(10)
                .overlay(alignment: .bottomLeading) {
                    HStack {
                        Image(systemName: "clock")
                        Text("15 min")
                    }
                    .padding(4)
                    .font(.callout)
                    .fontWeight(.medium)
                    .background {
                        Color.white.opacity(0.7)
                            .cornerRadius(10)
                    }
                }
            VStack(alignment: .leading, spacing: 4) {
                Text(food.name)
                    .font(.system(.headline, design: .rounded, weight: .semibold))
                
                Text("Ingredients: " + food.ingredients.joined(separator: ", "))
                    .multilineTextAlignment(.leading)
                    .font(.system(.subheadline, design: .rounded, weight: .medium))
//                    .font(.subheadline)
//                    .font(.system(size: 16, weight: .medium, design: .rounded))
                Spacer()
                HStack {
                    Image(systemName: "")
                    Image("vegan")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .cornerRadius(10)
                    Image("paper")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .cornerRadius(10)
                    Image("glutenFree")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .cornerRadius(10)
                    Image("breakfast")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                
                    
            }
            .padding(.top, 4)
            .frame(maxWidth: .infinity)
            .frame(height: 120)
        }
        .padding(8)
        .background {
            Color.black.opacity(0.03)
                .cornerRadius(10)
        }
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(food: Food.shared)
    }
}

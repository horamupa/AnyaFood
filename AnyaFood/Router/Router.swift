//
//  Router.swift
//  AnyaFood
//
//  Created by MM on 31.05.2023.
//

import SwiftUI


enum Router {
    
    case menuItem(item: any MenuItems)
    case cart
    case ingredients(item: [Ingredient])
    case deepLink
}

extension Router: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
    static func == (lhs: Router, rhs: Router) -> Bool {
        switch(lhs, rhs) {
            case (.menuItem(let lhsItem), .menuItem(let rhsItem)):
                return lhsItem.id == rhsItem.id
            case (.cart, .cart):
                return true
            case (.ingredients(let lhsItem), .ingredients(let rhsItem)):
                return lhsItem == rhsItem
            case (.deepLink, .deepLink):
                return true
            default:
                return false
        }
    }
}

extension Router: View {
    
    var body: some View {
        switch self {
            case .menuItem(item: let item):
                switch item {
                case is Food:
                    MenuDetailView(menuItem: item as! Food)
                case is Drink:
                    MenuDetailView(menuItem: item as! Drink)
                case is Desert:
                    MenuDetailView(menuItem: item as! Desert)
                default:
                    EmptyView()
                }
            case .cart:
                CartView()
            case .ingredients(let items):
                IngredientsDetailView(ingredients: items)
            case .deepLink:
                MenuDetailView(menuItem: Desert.deserts.first!)
        }
    }
}

extension Router {
//    static func buildDeepLink(from: route Router) -> URL? {
//        switch route {
//        case .menuItem(let item):
//            let itemRealName = item.name.replacingOccurrences(of: " ", with: "+")
//            var url = URL(string: "AnyaFood://item")
//        }
//    }
}



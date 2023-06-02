//
//  ContentView.swift
//  AnyaFood
//
//  Created by MM on 27.05.2023.
//

import SwiftUI

struct AllRecipeView: View {
    @EnvironmentObject var pathManager: PathManager
    @StateObject var cartManager = CartManager()
    @StateObject var vm = AllRecipeViewModel()
    
    var body: some View {
        NavigationStack(path: $pathManager.path) {
            ZStack {
                ScrollView {
                    VStack(spacing: 32) {
                        
                        VStack(spacing: 4) {
                            Text("Food")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .padding(.leading, 8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            ForEach(vm.foods) { food in
                                NavigationLink(value: Router.menuItem(item: food)) {
                                    MenuRowView(food: food)
                                        .background {
                                            Color.white.shadow(radius: 4)
                                        }
                                        .cornerRadius(10)
                                }
                                
                            }
                        }
                            
                        
                        VStack(spacing: 4) {
                            Text("Drinks")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .padding(.leading, 8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            ForEach(vm.drinks) { drink in
                                NavigationLink(value: Router.menuItem(item: drink)) {
                                    MenuRowView(food: drink)
                                        .background {
                                            Color.white.shadow(radius: 4)
                                        }
                                        .cornerRadius(10)
                                }
                            }
                        }
                        
                        VStack(spacing: 4) {
                            Text("Deserts")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .padding(.leading, 8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            ForEach(vm.deserts) { desert in
                                NavigationLink(value: Router.menuItem(item: desert)) {
                                    MenuRowView(food: desert)
                                        .background {
                                            Color.white.shadow(radius: 4)
                                        }
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                }
                .padding(.horizontal, 8)
                .listStyle(.insetGrouped)
                .listRowBackground(Color.clear)
                .scrollContentBackground(Visibility.hidden)
                .navigationDestination(for: Router.self) { route in
                    route
                }
            }
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        let fullMenu: [any Hashable] = vm.foods + vm.drinks + vm.deserts
                        if let randomElement = fullMenu.randomElement() {
                            pathManager.path.append(Router.menuItem(item: randomElement as! (any MenuItems)))
//                            pathManager.path.append(randomElement)
                        }
                    } label: {
                        Text("Random Recipe")
                            .foregroundColor(.black)
                    }

                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        pathManager.push(to: Router.cart)
                    } label: {
                        Image(systemName: "cart")
                            .foregroundColor(.black)
                    }

                }
            }
        }
        .environmentObject(pathManager)
        .environmentObject(cartManager)
    }
}

struct AllRecepieView_Previews: PreviewProvider {
    static var previews: some View {
            AllRecipeView()
    }
}

//
//  AnyaFoodApp.swift
//  AnyaFood
//
//  Created by MM on 27.05.2023.
//

import SwiftUI

@main
struct AnyaFoodApp: App {
    
    @StateObject var pathManager = PathManager()
    
    var body: some Scene {
        WindowGroup {
            AllRecipeView()
                .onOpenURL { url in
                    if url.host() == "menu" {
                        pathManager.push(to: .deepLink)
                    }
                }
                .environmentObject(pathManager)
        }
    }
}

//
//  NavigationRouter.swift
//  AnyaFood
//
//  Created by MM on 31.05.2023.
//

import SwiftUI

class PathManager: ObservableObject {
    
    @Published var path = [Router]()
    
    func push(to screen: Router) {
        path.append(screen)
    }
    
    func reset() {
        path.removeLast(path.count)
    }
    
    func back() {
        _ = path.removeLast()
    }
    
}

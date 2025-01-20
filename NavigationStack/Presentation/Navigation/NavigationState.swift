//
//  NavigationState.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import Foundation

class NavigationState<T>: ObservableObject where T: Hashable {
    
    // MARK: - Path
    
    @Published var path: [T] = []
    
    
    // MARK: - Public Methods
    
    func navigate(to route: T) {
        path.append(route)
    }
    
    func dismiss() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func clear() {
        guard !path.isEmpty else { return }
        path.removeAll()
    }
}

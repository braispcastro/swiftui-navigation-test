//
//  MainViewModel.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import Foundation

final class MainViewModel: BaseViewModel {
    
    // MARK: - Public Properties
    
    @Published var counter: Int = 0
    
    
    // MARK: - Private Properties
    
    private var mainNavigationState: MainNavigationState?
    
    
    // MARK: - Init
    
    
    // MARK: - Lifecycle
    
    
    // MARK: - Navigation
    
    func setupNavigation(_ mainNavigationState: MainNavigationState) {
        self.mainNavigationState = mainNavigationState
    }
    
    func dismiss() {
        mainNavigationState?.dismiss()
    }
    
    func clear() {
        mainNavigationState?.clear()
    }
    
    func navigate(to route: MainRoute) {
        mainNavigationState?.navigate(to: route)
    }
    
    
    // MARK: - Public Methods
    
    
    // MARK: - Private Methods
    
}

//
//  NavigationStackApp.swift
//  NavigationStack
//
//  Created by Brais Castro on 17/11/22.
//

import SwiftUI

@main
struct NavigationStackApp: App {
    
    // MARK: - Navigation
    
    @StateObject private var mainNavigationState = MainNavigationState()
    
    
    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            AlfaView.builder()
                .environmentObject(mainNavigationState)
        }
    }
}

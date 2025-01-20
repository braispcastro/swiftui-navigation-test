//
//  MainRoute.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import Foundation

enum MainRoute: Hashable {
    case beta
    case gamma
}

final class MainNavigationState: NavigationState<MainRoute> {}

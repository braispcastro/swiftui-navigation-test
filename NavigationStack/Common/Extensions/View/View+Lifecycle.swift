//
//  View+Lifecycle.swift
//  NavigationStack
//
//  Created by Brais Castro on 20/1/25.
//

import SwiftUI

extension View {
    
    func lifecycle(on uiModel: BaseUIModel) -> some View {
        self
            .onAppear(perform: uiModel.onAppear)
            .onDisappear(perform: uiModel.onDisappear)
    }
    
}

//
//  AlfaView+Builder.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import Foundation

extension AlfaView {
    
    static func builder() -> AlfaView {
        let viewModel = MainViewModel()
        let view = AlfaView(viewModel: viewModel)
        
        return view
    }
    
}

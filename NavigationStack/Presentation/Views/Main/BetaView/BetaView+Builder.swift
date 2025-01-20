//
//  BetaView+Builder.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import Foundation

extension BetaView {
    
    static func builder(viewModel: MainViewModel) -> BetaView {
        let view = BetaView(viewModel: viewModel)
        
        return view
    }
    
}

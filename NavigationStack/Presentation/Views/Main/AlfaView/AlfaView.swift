//
//  AlfaView.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import SwiftUI

struct AlfaView: View {
    
    // MARK: - Public Methods
    
    @StateObject var viewModel: MainViewModel
    
    
    // MARK: - Private Methods
    
    @EnvironmentObject private var mainNavigationState: MainNavigationState
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack(path: $mainNavigationState.path) {
            Color(uiColor: .systemBackground)
                .ignoresSafeArea()
                .overlay(contentView)
                .navigationTitle("AlphaView")
                .navigationDestination(for: MainRoute.self) { route in
                    switch route {
                    case .beta: BetaView.builder()
                    }
                }
        }
        .environmentObject(viewModel)
    }
    
    
    // MARK: - Accessory Views
    
    private var contentView: some View {
        VStack(spacing: 40) {
            Spacer(minLength: .zero)
            
            Text(String(viewModel.counter))
            
            HStack {
                Button(action: { viewModel.counter -= 1 }, label: {
                    Text("-")
                })
                
                Button(action: { viewModel.counter += 1 }, label: {
                    Text("+")
                })
            }
            
            Spacer(minLength: .zero)
            
            Button(action: { mainNavigationState.navigate(to: .beta) }, label: {
                Text("GO TO BETA")
            })
        }
        .font(.title)
    }
}

#Preview {
    AlfaView.builder()
}

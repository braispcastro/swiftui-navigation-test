//
//  BetaView.swift
//  NavigationStack
//
//  Created by Brais Castro on 19/1/25.
//

import SwiftUI

struct BetaView: View {
    
    // MARK: - Private Methods
    
    @EnvironmentObject private var viewModel: MainViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        Color(uiColor: .systemBackground)
            .ignoresSafeArea()
            .overlay(contentView)
            .navigationTitle("BetaView")
    }
    
    
    // MARK: - Accessory Views
    
    private var contentView: some View {
        VStack(spacing: 20) {
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
            
            Button(action: { viewModel.navigate(to: .gamma) }, label: {
                Text("GO TO GAMMA")
            })
            
            Button(action: viewModel.dismiss) { Text("BACK") }
            
            Button(action: viewModel.clear) { Text("CLOSE") }
        }
        .font(.title)
    }
}

#Preview {
    BetaView.builder()
}

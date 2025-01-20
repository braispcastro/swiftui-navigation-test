//
//  BaseUIModel.swift
//  NavigationStack
//
//  Created by Brais Castro on 20/1/25.
//

import Foundation
import Combine

class BaseUIModel: NSObject, ObservableObject {
    
    // MARK: - Properties
    
    internal var disposables: Set<AnyCancellable>
    
    
    // MARK: - Private Properties
    
    private var firstAppear: Bool = true
    
    
    // MARK: - Init
    
    internal override init() {
        self.disposables = Set<AnyCancellable>()
    }
    
    deinit {
        self.disposables.cancel()
    }
    
    
    // MARK: - Lifecycle
    
    open func onFirstAppear() {}
    
    open func onAppear() {
        if firstAppear {
            onFirstAppear()
            firstAppear = false
        }
    }
    
    open func onDisappear() {}
    
}

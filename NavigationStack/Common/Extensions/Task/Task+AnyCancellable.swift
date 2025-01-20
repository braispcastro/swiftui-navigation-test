//
//  Task+AnyCancellable.swift
//  NavigationStack
//
//  Created by Brais Castro on 20/1/25.
//

import Combine

extension Task {
    func store(in set: inout Set<AnyCancellable>) {
        set.insert(AnyCancellable(cancel))
    }
}

extension Task where Success == Never, Failure == Never {
    
    static func sleep(milliseconds: Int) async throws {
        let duration = UInt64(milliseconds * 1_000_000)
        try await Task.sleep(nanoseconds: duration)
    }
    
    static func sleep(seconds: Double) async throws {
        let duration = UInt64(seconds * 1_000_000_000)
        try await Task.sleep(nanoseconds: duration)
    }
    
}

extension Set where Element == AnyCancellable {
    func cancel() {
        forEach { $0.cancel() }
    }
}

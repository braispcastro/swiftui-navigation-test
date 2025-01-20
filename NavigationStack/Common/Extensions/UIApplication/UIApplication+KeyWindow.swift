//
//  UIApplication+KeyWindow.swift
//  NavigationStack
//
//  Created by Brais Castro on 20/1/25.
//

import SwiftUI

extension UIApplication {
    
    var keyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .first(where: { $0 is UIWindowScene })
            .flatMap({ $0 as? UIWindowScene })?.windows
            .first(where: \.isKeyWindow)
    }
    
}

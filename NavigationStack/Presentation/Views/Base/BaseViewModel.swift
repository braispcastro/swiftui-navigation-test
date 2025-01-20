//
//  BaseViewModel.swift
//  NavigationStack
//
//  Created by Brais Castro on 20/1/25.
//

import SwiftUI
import SafariServices

class BaseViewModel: BaseUIModel {
    
    // MARK: - Handle Errors
    
    
    // MARK: - Keyboard
    
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    
    // MARK: - Public Methods
    
    func openAppSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    func openUrl(_ stringURL: String) {
        guard let url = URL(string: stringURL) else { return }
        openUrl(url)
    }
    
    func openUrl(_ url: URL) {
        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = true
        
        let vc = SFSafariViewController(url: url, configuration: config)
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            
            topController.present(vc, animated: true, completion: nil)
        } else if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
}

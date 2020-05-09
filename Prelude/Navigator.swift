//
//  Navigator.swift
//  OpenTrace
//
//  Created by Satindar Dhillon on 5/9/20.
//

import UIKit

public protocol Navigator {
  var window: UIWindow { get }
  var services: Services { get }
  func navigate(to destination: Navigatable)
}

public extension Navigator {
  func navigate(to destination: Navigatable) {
    switch destination.navigationStyle {
    case .push:
      break
    case .root:
      window.rootViewController = destination.configuredViewController(
        services: services,
        navigator: self
      )
    case .modal:
      break
    case .tabBar:
      break
    case .none:
      break
    }
  }
}

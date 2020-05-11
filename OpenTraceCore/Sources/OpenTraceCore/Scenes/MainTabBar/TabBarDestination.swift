import OpenTraceUI
import Prelude
import SwiftUI
import UIKit

enum TabBarDestination: CaseIterable {
  case distance
  case history
  case settings
}

extension TabBarDestination: Navigatable {
  var requiresAuthentication: Bool { false }
  var navigationStyle: NavigationStyle { .tabBar }

  func configuredViewController(services: Services, navigator: Navigator) -> UIViewController {
    TabBarDestination.tabBarVC(services: services, navigator: navigator)
  }

  private func viewController(services _: Services, navigator _: Navigator) -> UINavigationController {
    switch self {
    case .distance:
      let navCon = UINavigationController(
        rootViewController: UIHostingController(rootView: DistanceView())
      )
      navCon.tabBarItem = tabBarItem
      return navCon
    case .history:
      let navCon = UINavigationController(
        rootViewController: UIHostingController(rootView: HistoryView())
      )
      navCon.tabBarItem = tabBarItem
      return navCon
    case .settings:
      let navCon = UINavigationController(
        rootViewController: UIHostingController(rootView: SettingsView())
      )
      navCon.tabBarItem = tabBarItem
      return navCon
    }
  }

  private var tabBarItem: UITabBarItem {
    switch self {
    case .distance:
      return UITabBarItem(
        title: "Distance",
        image: UIImage(systemName: "wifi"),
        selectedImage: UIImage(systemName: "wifi")
      )
    case .history:
      return UITabBarItem(
        title: "History",
        image: UIImage(systemName: "timer"),
        selectedImage: UIImage(systemName: "timer")
      )
    case .settings:
      return UITabBarItem(
        title: "Settings",
        image: UIImage(systemName: "gear"),
        selectedImage: UIImage(systemName: "gear")
      )
    }
  }

  private static func tabBarVC(services: Services, navigator: Navigator) -> UITabBarController {
    let tabBar = UITabBarController()
    tabBar.tabBar.tintColor = .systemRed
    tabBar.viewControllers = TabBarDestination.allCases.map {
      $0.viewController(services: services, navigator: navigator)
    }
    return tabBar
  }
}

import OpenTraceSupport
import OpenTraceUI
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
    let navCon = UINavigationController(
      rootViewController: UIHostingController(rootView: DistanceView())
    )

    switch self {
    case .distance:
      navCon.viewControllers = [UIHostingController(rootView: DistanceView())]
    case .history:
      navCon.viewControllers = [UIHostingController(rootView: HistoryView())]
    case .settings:
      navCon.viewControllers = [UIHostingController(rootView: SettingsView())]
    }

    navCon.tabBarItem = tabBarItem
    return navCon
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
    let tabBarController = UITabBarController()
    tabBarController.tabBar.tintColor = .systemRed
    tabBarController.viewControllers = TabBarDestination.allCases.map {
      $0.viewController(services: services, navigator: navigator)
    }
    return tabBarController
  }
}

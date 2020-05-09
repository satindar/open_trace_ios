//
//  WelcomeViewController.swift
//  OpenTrace
//
//  Created by Satindar Dhillon on 5/9/20.
//

import SwiftUI

public protocol WelcomeViewModelType {
  func navigateForward()
}

public final class WelcomeViewController: UIHostingController<WelcomeView> {
  let viewModel: WelcomeViewModelType

  init(viewModel: WelcomeViewModelType) {
    self.viewModel = viewModel
    super.init(rootView: WelcomeView())
  }

  @objc dynamic required init?(coder _: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

public struct WelcomeView: View {
  public var body: some View {
    Text("Welcome!")
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}

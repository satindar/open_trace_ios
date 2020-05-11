//
//  WelcomeViewController.swift
//  OpenTrace
//
//  Created by Satindar Dhillon on 5/9/20.
//

import Prelude
import SwiftUI

public protocol WelcomeViewModelType {
  func navigateForward()
}

public struct WelcomeView: View {
  private let viewModel: WelcomeViewModelType
  @State private var currentPage = 0

  public init(viewModel: WelcomeViewModelType) {
    self.viewModel = viewModel
  }

  public var body: some View {
    VStack(spacing: 20) {
      PagerView(pageCount: 3, currentIndex: $currentPage) {
        Color.blue
        Color.red
        Color.green
      }
      Button(action: handleButtonTap) {
        Text("Continue")
      }
    }
  }

  private func handleButtonTap() {
    viewModel.navigateForward()
  }
}

struct WelcomeView_Previews: PreviewProvider {
  struct ViewModel: WelcomeViewModelType {
    func navigateForward() {}
  }

  static var previews: some View {
    WelcomeView(viewModel: ViewModel())
  }
}

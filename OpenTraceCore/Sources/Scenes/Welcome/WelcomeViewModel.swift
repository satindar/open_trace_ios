//
//  WelcomeViewModel.swift
//  OpenTrace
//
//  Created by Satindar Dhillon on 5/9/20.
//

import Foundation
import OpenTraceUI
import Prelude

final class WelcomeViewModel: WelcomeViewModelType {
  let navigator: Navigator

  init(navigator: Navigator) {
    self.navigator = navigator
  }

  func navigateForward() {
    // implement action
  }
}

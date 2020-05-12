import SwiftUI
import UIKit

private enum AppColor: String, CaseIterable {
  case primary // #ac0029
  case primaryDark //  #930023
  case black // #12181f
  case grey // #555550
  case greyMedium // #70706d
  case greyLight // #82827A
  case divider // #e5e5e5
  case background // #faf8f8
  case white // #ffffff
  case red // #bb002d
  case orange // #ed4718
  case primaryBlue // #092fba
  case green // #13ba2c
  case yellow // #bab013
  case secondaryBlue // #0b58ad

  var uiColor: UIColor {
    // TODO: Add unit tests to make sure all colors in enum match with asset catalog
    UIColor(named: rawValue)!
  }
}

public extension UIColor {
  static var appPrimary: UIColor { AppColor.primary.uiColor }
  static var appPrimaryDark: UIColor { AppColor.primaryDark.uiColor }
  static var appBlack: UIColor { AppColor.black.uiColor }
  static var appGrey: UIColor { AppColor.grey.uiColor }
  static var appGreyMedium: UIColor { AppColor.greyMedium.uiColor }
  static var appGreyLight: UIColor { AppColor.greyLight.uiColor }
  static var appDivider: UIColor { AppColor.divider.uiColor }
  static var appBackground: UIColor { AppColor.background.uiColor }
  static var appWhite: UIColor { AppColor.white.uiColor }
  static var appRed: UIColor { AppColor.red.uiColor }
  static var appOrange: UIColor { AppColor.orange.uiColor }
  static var appPrimaryBlue: UIColor { AppColor.primaryBlue.uiColor }
  static var appGreen: UIColor { AppColor.green.uiColor }
  static var appYellow: UIColor { AppColor.yellow.uiColor }
  static var appSecondaryBlue: UIColor { AppColor.secondaryBlue.uiColor }
}

public extension Color {
  static var appPrimary: Color { Color(AppColor.primary.rawValue) }
  static var appPrimaryDark: Color { Color(AppColor.primaryDark.rawValue) }
  static var appBlack: Color { Color(AppColor.black.rawValue) }
  static var appGrey: Color { Color(AppColor.grey.rawValue) }
  static var appGreyMedium: Color { Color(AppColor.greyMedium.rawValue) }
  static var appGreyLight: Color { Color(AppColor.greyLight.rawValue) }
  static var appDivider: Color { Color(AppColor.divider.rawValue) }
  static var appBackground: Color { Color(AppColor.background.rawValue) }
  static var appWhite: Color { Color(AppColor.white.rawValue) }
  static var appRed: Color { Color(AppColor.red.rawValue) }
  static var appOrange: Color { Color(AppColor.orange.rawValue) }
  static var appPrimaryBlue: Color { Color(AppColor.primaryBlue.rawValue) }
  static var appGreen: Color { Color(AppColor.green.rawValue) }
  static var appYellow: Color { Color(AppColor.yellow.rawValue) }
  static var appSecondaryBlue: Color { Color(AppColor.secondaryBlue.rawValue) }
}

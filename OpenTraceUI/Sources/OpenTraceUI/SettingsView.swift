import SwiftUI

public struct SettingsView: View {
  public init() {}

  public var body: some View {
    Text(String.Local.settingsSceneTitle)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}

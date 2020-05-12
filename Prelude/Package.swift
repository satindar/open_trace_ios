// swift-tools-version:5.2
import PackageDescription

let package = Package(
  name: "Prelude",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(name: "Prelude", targets: ["Prelude"])
  ],
  dependencies: [
    .package(url: "https://github.com/Quick/Quick", .exact("2.2.0")),
    .package(url: "https://github.com/Quick/Nimble", .exact("8.0.7"))
  ],
  targets: [
    .target(
      name: "Prelude",
      dependencies: []
    ),
    .testTarget(
      name: "PreludeTests",
      dependencies: ["Prelude", "Quick", "Nimble"]
    )
  ]
)

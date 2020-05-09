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
  dependencies: [],
  targets: [
    .target(name: "Prelude", dependencies: [])
  ]
)

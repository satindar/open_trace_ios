//// swift-tools-version:5.1
// import PackageDescription
//
// let package = Package(
//  name: "OpenSourceCore",
//  platforms: [
//    .iOS(.v13),
//  ],
//  products: [
//      .library(name: "OpenSourceCore", targets: ["OpenSourceCore"]),
//  ],
//  dependencies: [
//      .package(url: "https://url/of/another/package/named/Utility", from: "1.0.0"),
//  ],
//  targets: [
//      .target(name: "MyLibrary", dependencies: ["Utility"]),
//      .testTarget(name: "MyLibraryTests", dependencies: ["MyLibrary"]),
//  ]
// )
//
//
//// swift-tools-version:5.0
//// The swift-tools-version declares the minimum version of Swift required to build this package.
// import PackageDescription
//
// let package = Package(
//    name: "Valet",
//    platforms: [
//        .iOS(.v9),
//        .tvOS(.v9),
//        .watchOS(.v2),
//        .macOS(.v10_11),
//    ],
//    products: [
//        .library(
//            name: "Valet",
//            targets: ["Valet"]),
//    ],
//    targets: [
//        .target(
//            name: "Valet",
//            dependencies: []),
//    ],
//    swiftLanguageVersions: [.v4, .v4_2, .v5]
// )

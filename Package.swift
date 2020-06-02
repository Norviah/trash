// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "trash",
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.5"),
	  .package(url: "https://github.com/kylef/PathKit", from: "1.0.0"),
  ],
  targets: [
    .target(name: "trash", dependencies: ["PathKit", .product(name: "ArgumentParser", package: "swift-argument-parser")], path: "Sources")
  ]
)

// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "design-system",
  platforms: [.iOS(.v16)],
  products: [
    .library(name: "Avatar", targets: ["Avatar"]),
    .library(name: "CaaaptionButton", targets: ["CaaaptionButton"]),
    .library(name: "Spinner", targets: ["Spinner"]),
  ],
  dependencies: [
    .package(url: "https://github.com/doordash-oss/swiftui-preview-snapshots", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "Avatar",
      dependencies: [
        .product(name: "PreviewSnapshots", package: "swiftui-preview-snapshots"),
      ]
    ),
    .testTarget(
      name: "AvatarTests",
      dependencies: [
        "Avatar",
        .product(name: "PreviewSnapshotsTesting", package: "swiftui-preview-snapshots"),
      ]
    ),
    .target(
      name: "CaaaptionButton",
      dependencies: [
        "Spinner",
        .product(name: "PreviewSnapshots", package: "swiftui-preview-snapshots"),
      ]
    ),
    .testTarget(
      name: "CaaaptionButtonTests",
      dependencies: [
        "CaaaptionButton",
        .product(name: "PreviewSnapshotsTesting", package: "swiftui-preview-snapshots"),
      ]
    ),
    .target(
      name: "Spinner",
      dependencies: [
        .product(name: "PreviewSnapshots", package: "swiftui-preview-snapshots"),
      ]
    ),
    .testTarget(
      name: "SpinnerTests",
      dependencies: [
        "Spinner",
        .product(name: "PreviewSnapshotsTesting", package: "swiftui-preview-snapshots"),
      ]
    ),
  ]
)

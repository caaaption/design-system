# caaaption design system

A design system for caaaption built with SwiftUI.

NOTE: This project is in alpha stage. It is in active development and is subject to change.

## Install

To install this package using SwiftPM:
```swift
dependencies: [
  .package(
    url: "https://github.com/caaaption/design-system",
    from: "0.1.0"
  ),
]
```
```swift
targets: [
  .target(name: "MyApp", dependencies: [
    .product(name: "Spinner", package: "design-system"),
  ]),
]
```

## License

For more information see our full [license](./LICENSE).

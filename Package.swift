// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mparticle-apple-integration-branchmetrics",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "mparticle-apple-integration-branchmetrics",
            targets: ["mparticle-apple-integration-branchmetrics"]),
    ],
    dependencies: [
      .package(name: "Branch", url: "git@github.com:BranchMetrics/ios-branch-deep-linking-attribution.git", from: "0.0.0"),
      .package(name: "mParticle-Apple-SDK", url: "git@github.com:mParticle/mparticle-apple-sdk.git", from: "8.0.0"),
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "mparticle-apple-integration-branchmetrics",
            dependencies: ["Branch", "mParticle-Apple-SDK"]),
        .testTarget(
            name: "mparticle-apple-integration-branchmetricsTests",
            dependencies: ["mparticle-apple-integration-branchmetrics"]),
    ]
)

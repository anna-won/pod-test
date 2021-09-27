// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pod-test",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "pod-test",
            targets: ["pod-test"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", from : "6.0.0"),
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", from: "1.9.5"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", from: "4.2.0")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
                    name: "pod-test",         // <--- new wrapper
                    dependencies: [
                        .target(name: "PodFramework")    // <-- reference the actual binary target here
                    ],
                    path: "TestSource",
                    publicHeadersPath: ""
        ),
        .binaryTarget(name: "PodFramework",
                      path: "Frameworks/PodFrameworkTest.xcframework"),
       
    ]
)

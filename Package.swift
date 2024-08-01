// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "RxGesture",
    platforms: [.iOS(.v12), .macOS(.v12), .watchOS(.v4), .tvOS(.v12)],
    products: [
        .library(name: "RxGesture", targets: ["RxGesture"])
    ],
    dependencies: [
        .package(url: "https://github.com/FountainheadMobileSolutions/RxSwift.git", .upToNextMajor(from: "6.8.0")),
    ],
    targets: [
        .target(
            name: "RxGesture",
            dependencies: [
              .product(name: "RxSwift", package: "RxSwift"), 
              .product(name: "RxCocoa", package: "RxSwift"),
            ],
            path: "Pod",
            exclude: ["Classes/OSX"]
        )
    ]
)

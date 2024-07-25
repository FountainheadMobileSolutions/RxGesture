// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "RxGesture",
    products: [
        .library(name: "RxGesture", targets: ["RxGesture"])
    ],
    dependencies: [
        .package(url: "https://github.com/FountainheadMobileSolutions/RxSwift.git", branch: "topic/xcode16"),
    ],
    targets: [
        .target(
            name: "RxGesture",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "Pod",
            exclude: ["Classes/OSX"]
        )
    ]
)

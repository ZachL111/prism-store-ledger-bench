// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "prism-store-ledger-bench",
    products: [.executable(name: "prism-store-ledger-bench", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)

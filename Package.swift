// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "Queue",
	platforms: [
		.macOS(.v10_16),
		.macCatalyst(.v14),
		.iOS(.v14),
		.tvOS(.v14),
		.watchOS(.v7)
	],
	products: [
		.library(name: "Queue", targets: ["Queue"]),
	],
	targets: [
		.target(name: "Queue"),
		.testTarget(name: "QueueTests", dependencies: ["Queue"]),
	]
)

let swiftSettings: [SwiftSetting] = [
	.enableExperimentalFeature("StrictConcurrency"),
]

for target in package.targets {
	var settings = target.swiftSettings ?? []
	settings.append(contentsOf: swiftSettings)
	target.swiftSettings = settings
}

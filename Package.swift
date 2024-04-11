// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXEOWeChatInvoke",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXEOWeChatInvoke",
			targets: ["GXEOWeChatInvokeWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.6.0-beta.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.6.0-beta.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.6.0-beta.0")
	],
	targets: [
		.target(name: "GXEOWeChatInvokeWrapper",
				dependencies: [
					"GXEOWeChatInvoke",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXEOWeChatInvoke",
			url: "https://pkgs.genexus.dev/iOS/beta/GXEOWeChatInvoke-1.6.0-beta.0.xcframework.zip",
			checksum: "5652d130d70979d1832867e2573b40efaf0de9b59e26a6c2643769c5bd21bb76"
		)
	]
)
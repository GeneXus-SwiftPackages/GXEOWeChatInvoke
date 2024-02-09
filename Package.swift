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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.5.0-rc.2"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.5.0-rc.2"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.5.0-rc.2")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXEOWeChatInvoke-1.5.0-rc.2.xcframework.zip",
			checksum: "1d3e83a8b0c929468e58a3cec126193bd72b9d89c114a8a6430692f1ccc8bb04"
		)
	]
)
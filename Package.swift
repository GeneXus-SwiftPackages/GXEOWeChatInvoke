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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.4.0-rc.10"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.4.0-rc.10"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.4.0-rc.10")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXEOWeChatInvoke-1.4.0-rc.10.xcframework.zip",
			checksum: "0e5ab7fe1322c3b145d454205f8e58872f4eecd4745738a9ca5c996625f8d867"
		)
	]
)
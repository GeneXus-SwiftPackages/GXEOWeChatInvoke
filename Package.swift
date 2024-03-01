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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.5.0-beta.11"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.5.0-beta.11"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.5.0-beta.11")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXEOWeChatInvoke-1.5.0-beta.11.xcframework.zip",
			checksum: "455bef5a9d6b3d43ff5e42cd405c76e7ca9d1ec8995d593ccc2140b3bb0c6750"
		)
	]
)
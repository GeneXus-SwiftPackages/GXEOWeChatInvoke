// swift-tools-version: 5.9
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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "2.1.0-rc.23"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "2.1.0-rc.23"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "2.1.0-rc.23")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXEOWeChatInvoke-2.1.0-rc.23.xcframework.zip",
			checksum: "b61bd278a662130ee669c11ac1855ae9d5c5a8d7d280d7a872a4e71246dc53d7"
		)
	]
)
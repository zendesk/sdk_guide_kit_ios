// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKGuideKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ZendeskSDKGuideKit",
            targets: [
                "ZendeskSDKGuideKitTargets"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "ZendeskSDKLogger",
            url: "https://github.com/zendesk/sdk_logger_ios",
            from: "0.9.1"
        ),
        .package(
            name: "ZendeskSDKHTTPClient",
            url: "https://github.com/zendesk/sdk_http_client_ios",
            from: "0.15.1"
        ),
        .package(
            name: "ZendeskSDKStorage",
            url: "https://github.com/zendesk/sdk_storage_ios",
            from: "1.0.1"
        ),
        .package(
            name: "ZendeskSDKCoreUtilities",
            url: "https://github.com/zendesk/sdk_core_utilities_ios",
            from: "2.2.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKGuideKit",
            path: "ZendeskSDKGuideKit.xcframework"
        ),
        .target(
            name: "ZendeskSDKGuideKitTargets",
            dependencies: [
                .target(name: "ZendeskSDKGuideKit"),
                .product(name: "ZendeskSDKLogger", package: "ZendeskSDKLogger"),
                .product(name: "ZendeskSDKHTTPClient", package: "ZendeskSDKHTTPClient"),
                .product(name: "ZendeskSDKStorage", package: "ZendeskSDKStorage"),
                .product(name: "ZendeskSDKCoreUtilities", package: "ZendeskSDKCoreUtilities")
            ],
            path: "Sources"
        )
    ]
)

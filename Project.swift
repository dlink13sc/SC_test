import ProjectDescription

let project = Project(
    name: "SC_test_ci_cd",
    targets: [
        .target(
            name: "SC_test_ci_cd",
            destinations: .iOS,
            product: .app,
            bundleId: "com.dlink.SC-test-ci-cd",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["SC_test/Sources/**"],
            resources: ["SC_test/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SC_test_ci_cdTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.dlink.SC-test-ci-cd",
            infoPlist: .default,
            sources: ["SC_test/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SC_test_ci_cd")]
        ),
    ]
)

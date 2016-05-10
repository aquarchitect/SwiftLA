import PackageDescription

let swiftyJSON: Package.Dependency = .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 7)

let package = Package(name: "Data", dependencies: [swiftyJSON])

import PackageDescription

let common: Package.Dependency = .Package(url: "../Common", majorVersion: 1)
let kitura: Package.Dependency = .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 11)

let package = Package(name: "Server", dependencies: [common, kitura])

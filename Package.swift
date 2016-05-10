import PackageDescription 

let kitura: Package.Dependency = .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 13)
let service = Target(name: "Service", dependencies: ["Data"]) 

let package = Package(name: "Server", targets: [service], dependencies: [kitura], exclude: ["Data/Package.swift", "Data/Packages"])

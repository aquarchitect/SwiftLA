import PackageDescription 

let kitura: Package.Dependency = .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 13)
let backend = Target(name: "Backend", dependencies: ["Data"]) 

let package = Package(name: "Web", targets: [backend], dependencies: [kitura], exclude: ["Data/Package.swift", "Data/Packages"])

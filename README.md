<p align="center">
    <img src="https://user-images.githubusercontent.com/1342803/36623515-7293b4ec-18d3-11e8-85ab-4e2f8fb38fbd.png" width="320" alt="REST API VAPOR 3 - Server Side Swift">
    <br>
    <br>
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/api-template">
        <img src="https://circleci.com/gh/vapor/api-template.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.1-brightgreen.svg" alt="Swift 4.1">
    </a>
</p>

# REST API VAPOR 3 - Server Side Swift

Swift on the server side expands the working area for a developer to work on everything involved in the app, and move seamlessly between client-side and server-side. Currently there are lot of server side swift frameworks:   Vapor, Perfect, Kitura, and Zewo.

Among them I have learned the vapor. Vapor is a server-side Swift web framework. By using vapor we can do:

- Restful API Server 
- display html pages
- send emails
- push notifications

So, Vapor will suite almost everything. 

### Advantage of Vapor:
- Building web apps in Swift lets you re-use the skills you've already mastered, while being faster and safer than other languages.
- They have an enormous and very active community, and they have a very simple syntax. 
- Readable and understandable API
- Vapor’s database support is very thorough. They not only have native connectors for SQL languages like MySQL, Sqlite, and PostgreSQL, but also include native support for Redis and MongoDB. In addition, they also have the Fluent ORM system with support for SQLite, MySQL, PostgreSQL, and MongoDB

### Basic Requirements:
 - Xcode 9.3 or higher
- Vapor requires Swift 4.1 or greater.

### Command You need to Know:
```
swift --version
brew install vapor/tap/vapor
vapor --help
```
### Folder Structure:
```

├── Public
├── Sources
│   ├── App
│   │   ├── Controllers
│   │   ├── Models
│   │   ├── boot.swift
│   │   ├── configure.swift
│   │   └── routes.swift
│   └── Run
│       └── main.swift
├── Tests
│   └── AppTests
└── Package.swift
```


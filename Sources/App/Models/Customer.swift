//
//  Customer.swift
//  App
//
//  Created by Razib Mollick on 10/1/18.
//

import Vapor
import FluentSQLite

final class Customer: Codable {
    var id: Int?
    var name: String
    var email: String
    var loginname: String
    var password: String
    
    init(name: String, email: String, loginname: String, password: String) {
        self.name = name
        self.email = email
        self.loginname = loginname
        self.password = password
    }
    final class Public: Codable {
        var id: Int?
        var name: String
        var username: String
        
        init(id: Int?, name: String, username: String) {
            self.id = id
            self.name = name
            self.username = username
        }
    }
}

// model will be stored in a SQLite database.
extension Customer: SQLiteModel {}
// used to create a table for the model in the database.
extension Customer: Migration {}
//Vapor provides Content protocol, which allows us to convert the model to the JSON format.
extension Customer: Content {}
extension Customer: Parameter {}

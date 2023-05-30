//
//  User.swift
//  ToDoList
//
//  Created by Volkan Kuday on 5/10/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

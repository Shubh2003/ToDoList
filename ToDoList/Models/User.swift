//
//  User.swift
//  ToDoList
//
//  Created by Admin on 20/08/23.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

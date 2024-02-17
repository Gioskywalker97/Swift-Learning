//
//  Model.swift
//  UIKitCrashCourse
//
//  Created by Giovanni Salas on 1/29/24.
//

import Foundation

struct UsersResponse: Codable {
    let data: [PersonResponse]
}

struct PersonResponse: Codable {
    let email: String
    let firstName: String
    let lastName: String
}

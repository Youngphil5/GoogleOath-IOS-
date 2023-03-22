//
//  User.swift
//  SignInGod
//
//  Created by Olisemedua Onwuatogwu on 3/21/23.
//

import Foundation
import ParseSwift

// TODO: Pt 1 - Create Parse User model
struct User: ParseUser {
    // These are required by `ParseObject`.
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // These are required by `ParseUser`.
    var username: String?
    var email: String?
    var FullName: String?
    var emailVerified: Bool?
    var password: String?
    var authData: [String: [String: String]?]?
}

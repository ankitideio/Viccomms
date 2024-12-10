//
//  AuthModel.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import Foundation

// MARK: - AuthModel
struct AuthModel: Codable {
    let status, message: String?
    let statusCode: Int?
    let data: AuthData?
}

// MARK: - AuthData
struct AuthData: Codable {
    let verifyURL: String?
    let token, otp: String?
    let user: User?

    enum CodingKeys: String, CodingKey {
        case verifyURL = "verifyUrl"
        case token, otp, user
    }
}

// MARK: - User
struct User: Codable {
    let role, fullname, email, password: String?
    let fcmToken: String?
    let isApproved,isEmailVerify: Bool?
    let id, createdAt, updatedAt: String?
    let v: Int?

    enum CodingKeys: String, CodingKey {
        case role, fullname, email, password
        case fcmToken, isApproved,isEmailVerify
        case id = "_id"
        case createdAt, updatedAt
        case v = "__v"
    }
}


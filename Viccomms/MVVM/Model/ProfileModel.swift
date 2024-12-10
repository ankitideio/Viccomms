//
//  ProfileModel.swift
//  Viccomms
//
//  Created by meet sharma on 21/09/23.
//

import Foundation

// MARK: - ProfileModel
struct ProfileModel: Codable {
    let status, message: String?
    let statusCode: Int?
    let data: ProfileData?
}

// MARK: - DataClass
struct ProfileData: Codable {
    let user: UserProfile?
}

// MARK: - User
struct UserProfile: Codable {
    let id, fullname, email: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case fullname, email
    }
}

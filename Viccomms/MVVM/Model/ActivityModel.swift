//
//  ActivityModel.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import Foundation

// MARK: - ActivityModel
struct ActivityModel: Codable {
    let data: ActivityData?
    let status, message: String?
    let statusCode: Int?
}

// MARK: - DataClass
struct ActivityData: Codable {
    let activities: [Activity]?
}

// MARK: - Activity
struct Activity: Codable {
    let v: Int?
    let id, categoriesID, createdAt: String?
    let image: String?
    let isStatus: Int?
    let name, updatedAt, userID: String?

    enum CodingKeys: String, CodingKey {
        case v = "__v"
        case id = "_id"
        case categoriesID = "categoriesId"
        case createdAt, image, isStatus, name, updatedAt
        case userID = "userId"
    }
}

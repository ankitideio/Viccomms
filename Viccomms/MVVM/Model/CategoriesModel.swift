//
//  CategoriesModel.swift
//  Viccomms
//
//  Created by meet sharma on 20/09/23.
//

import Foundation

// MARK: - CategoriesModel
struct CategoriesModel: Codable {
    let statusCode: Int?
    let message, status: String?
    let data: CategoriesData?
}

// MARK: - CategoriesData
struct CategoriesData: Codable {
    let categories: [Category]?

    enum CodingKeys: String, CodingKey {
        case categories = "Categories"
    }
}

// MARK: - Category
struct Category: Codable {
    let id, categoryName: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case categoryName
    }
}

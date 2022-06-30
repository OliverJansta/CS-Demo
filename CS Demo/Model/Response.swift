//
//  Response.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import Foundation

struct ResponseModel: Codable {
    let pageNumber: Int
    let pageSize: Int
    let pageCount: Int
    let nextPage: Int
    let recordCount: Int
    let accounts: [Account]
}

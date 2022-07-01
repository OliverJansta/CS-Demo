//
//  DetailResponse.swift
//  CS Demo
//
//  Created by Oliver Jansta on 30.06.2022.
//

import Foundation

struct DetailResponseModel: Codable {
    let pageNumber: Int
    let pageSize: Int
    let pageCount: Int
    let nextPage: Int
    let recordCount: Int
    let transactions: [AccountDetail]
}

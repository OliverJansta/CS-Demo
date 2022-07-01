//
//  AmountModel.swift
//  CS Demo
//
//  Created by Oliver Jansta on 01.07.2022.
//

import Foundation

struct Amount: Codable {
    let value: Float
    let precision: Float?
    let currency: String
}

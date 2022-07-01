//
//  Account.swift
//  CS Demo
//
//  Created by Oliver Jansta on 23.06.2022.
//

import Foundation

struct Account: Codable, Identifiable {
    let accountNumber: String
    let bankCode: String
    let transparencyFrom: String?
    let transparencyTo: String?
    let publicationTo: String?
    let actualizationDate: String?
    let balance: Float
    let currency: String?
    let name: String
    let iban: String?
    let id = UUID()
}

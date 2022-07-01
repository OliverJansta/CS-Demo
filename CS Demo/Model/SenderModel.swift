//
//  SenderModel.swift
//  CS Demo
//
//  Created by Oliver Jansta on 01.07.2022.
//

import Foundation

struct Sender: Codable {
    let accountNumber: String?
    let bankCode: String?
    let iban: String?
    let specificSymbol: String?
    let specificSymbolParty: String?
    let variableSymbol: String?
    let constantSymbol: String?
    let name: String?
    let description: String?
}

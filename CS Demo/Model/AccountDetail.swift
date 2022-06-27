//
//  AccountDetail.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import Foundation

struct AccountDetail: Codable {
    let amount: Amount
    let type: String
    let dueDate: String
    let processingDate: String
    let sender: Sender
    let reciever: Reciever
    let typeDescription: String
}

struct Amount: Codable {
    let value: Float
    let precision: Float
    let currency: String
}

struct Sender: Codable {
    let accountNumber: String
    let bankCode: Int
    let iban: String
    let specificSymbol: Int
    let specificSymbolParty: Int
    let variableSymbol: Int
    let constantSymbol: Int
    let name: String
    let description: String
}

struct Reciever: Codable {
    let accountNumber: String
    let bankCode: String
    let iban: String
}

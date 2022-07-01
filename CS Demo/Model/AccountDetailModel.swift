//
//  AccountDetail.swift
//  CS Demo
//
//  Created by Oliver Jansta on 27.06.2022.
//

import Foundation

struct AccountDetail: Codable, Identifiable {
    let amount: Amount
    let type: String
    let dueDate: String?
    let processingDate: String?
    let sender: Sender?
    let reciever: Reciever?
    let typeDescription: String?
    let id = UUID()
}


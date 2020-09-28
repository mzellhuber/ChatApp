//
//  Models.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import Foundation

struct SubmittedChatMessage: Encodable {
    let message: String
        let user: String
        let userID: UUID
}

struct ReceivingChatMessage: Decodable, Identifiable {
    let date: Date
    let id: UUID
    let message: String
    let user: String
    let userID: UUID
}

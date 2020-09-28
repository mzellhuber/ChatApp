//
//  UserInfo.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import Combine
import Foundation

class UserInfo: ObservableObject {
    let userID = UUID()
    @Published var username = ""
}

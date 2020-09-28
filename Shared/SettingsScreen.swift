//
//  SettingsScreen.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 28/09/20.
//

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject private var userInfo: UserInfo

    private var isUsernameValid: Bool {
        !userInfo.username.trimmingCharacters(in: .whitespaces).isEmpty
    }

    var body: some View {
        Form {
            Section(header: Text("Username")) {
                TextField("E.g. Jane Appleseed", text: $userInfo.username)
                NavigationLink("Continue", destination: ChatScreen())
                    .disabled(!isUsernameValid)
            }
        }
        .navigationTitle("Settings")
    }
}

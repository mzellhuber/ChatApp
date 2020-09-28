//
//  ContentView.swift
//  Shared
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var userInfo = UserInfo()

        var body: some View {
        NavigationView {
            SettingsScreen()
        }
        .environmentObject(userInfo)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

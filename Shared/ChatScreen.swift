//
//  ChatScreen.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import SwiftUI

struct ChatScreen: View {
    @StateObject private var model = ChatScreenModel()
    @State private var message = ""

    private func onAppear() {
        model.connect()
    }

    private func onDisappear() {
        model.disconnect()
    }

    var body: some View {
        VStack {
            // Chat history.
            ScrollView {
                // Coming soon!
            }

            // Message field.
            HStack {
                TextField("Message", text: $message)
                    .padding(10)
                    .background(Color.secondary.opacity(0.2))
                    .cornerRadius(5)

                Button(action: {}) {
                    Image(systemName: "arrowshape.turn.up.right")
                        .font(.system(size: 20))
                }
                .padding()
                .disabled(message.isEmpty)
            }
            .padding()
        }
        .onAppear(perform: onAppear)
        .onDisappear(perform: onDisappear)
    }
}

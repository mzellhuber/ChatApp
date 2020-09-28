//
//  ChatScreen.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import SwiftUI

struct ChatScreen: View {
    @State private var message = ""

    var body: some View {
        VStack {
            // Chat history.
            ScrollView { // 1
                // Coming soon!
            }

            // Message field.
            HStack {
                TextField("Message", text: $message) // 2
                    .padding(10)
                    .background(Color.secondary.opacity(0.2))
                    .cornerRadius(5)

                Button(action: {}) { // 3
                    Image(systemName: "arrowshape.turn.up.right")
                        .font(.system(size: 20))
                }
                .padding()
                .disabled(message.isEmpty) // 4
            }
            .padding()
        }
    }
}

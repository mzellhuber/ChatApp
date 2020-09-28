//
//  ChatScreenModel.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import Combine
import Foundation

final class ChatScreenModel: ObservableObject {
    @Published private(set) var messages: [ReceivingChatMessage] = []
    private var webSocketTask: URLSessionWebSocketTask? // 1

    // MARK: - Connection
    func connect() {
        let url = URL(string: "ws://127.0.0.1:8080/chat")!
        webSocketTask = URLSession.shared.webSocketTask(with: url)
        webSocketTask?.receive(completionHandler: onReceive)
        webSocketTask?.resume()
    }

    func disconnect() {
        webSocketTask?.cancel(with: .normalClosure, reason: nil)
    }

    private func onReceive(incoming: Result<URLSessionWebSocketTask.Message, Error>) {
        //
    }

    deinit {
        disconnect()
    }

    func send(text: String) {
        let message = SubmittedChatMessage(message: text)
        guard let json = try? JSONEncoder().encode(message),
            let jsonString = String(data: json, encoding: .utf8)
        else {
            return
        }

        webSocketTask?.send(.string(jsonString)) { error in
            if let error = error {
                print("Error sending message", error)
            }
        }
    }
}

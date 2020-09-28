//
//  ChatScreenModel.swift
//  ChatApp
//
//  Created by Melissa Zellhuber on 27/09/20.
//

import Combine
import Foundation

final class ChatScreenModel: ObservableObject {
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
}

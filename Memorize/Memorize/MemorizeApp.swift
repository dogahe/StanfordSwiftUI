//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Behzad Dogahe on 10/1/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}

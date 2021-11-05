//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Behzad Dogahe on 10/12/21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚅", "🚗", "🛥", "🚜", "🛵", "🚖", "🚀", "🛳", "🚔", "⛵️", "🚁", "🚲", "🚒", "👑", "☎️", "🪑"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOFCards: 14) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}

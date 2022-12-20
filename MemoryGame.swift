//
//  MemoryGame.swift
//  Memorize
//
//  Created by Hugo Branco on 14/12/22.
//

import Foundation

struct MemoryGame<T> {
  var cards: Array<Card>
  
  func chooseCard(_ card: Card) {}
  
  struct Card {
    var isFaceUp: Bool
    var isMatched: Bool
    var content: T
  }
}

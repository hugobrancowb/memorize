//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Hugo Branco on 14/12/22.
//

import SwiftUI

class EmojiMemoryGameViewModel {
  private var model: MemoryGame<String>
  
  init(_ model: MemoryGame<String>) {
    self.model = model
  }
}

struct Previews_EmojiMemoryGameViewModel_Previews: PreviewProvider {
  static var previews: some View {
    /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
  }
}

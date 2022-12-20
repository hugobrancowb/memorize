//
//  ContentView.swift
//  Memorize
//
//  Created by Hugo Branco on 12/12/22.
//

import SwiftUI

struct ContentView: View {
  let emojis = [ "👨‍💻", "🍎", "🎨", "🍉", "😀", "😃", "🧞‍♂️", "😅", "🤣", "🧜‍♀️", "🙂", "🌹", "🌻", "😉", "😊", "💖" ]
  let emojiHCount = 16
  
  var body: some View {
    VStack{
      ScrollView {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
          ForEach(emojis, id: \.self) { emoji in
            CardView(text: emoji).aspectRatio(2/3, contentMode: .fit)
          }
        }
      }
    }.padding()
  }
}

struct CardView: View {
  /// Card color.
  var color: Color = .purple
  
  /// Card text, or emoji, shown inside.
  var text: String = ""
  
  /// If true, card will be shoing its `text`
  @State var isFaceUp: Bool = true
  
  var body: some View {
    let text = Text(text).font(.largeTitle)
    let shape = RoundedRectangle(cornerRadius: 16.0)
    
    ZStack {
      if isFaceUp {
        // first view returned
        shape
          .fill()
          .foregroundColor(.white)
        
        // second view returned
        shape
          .strokeBorder(style: StrokeStyle(lineWidth: 2))
          .foregroundColor(color)
        
        // third view returned
        text
      } else {
        // only view returned
        shape.fill().foregroundColor(color)
      }
    }
    .onTapGesture {
      isFaceUp = !isFaceUp
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

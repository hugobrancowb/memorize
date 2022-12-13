//
//  ContentView.swift
//  Memorize
//
//  Created by Hugo Branco on 12/12/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    let frame = RoundedRectangle(cornerRadius: 24.0)
      .stroke(style: StrokeStyle(lineWidth: 2))
    
    let text = Text("😉")
    
    ZStack { frame; text }
    .foregroundColor(.purple)
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

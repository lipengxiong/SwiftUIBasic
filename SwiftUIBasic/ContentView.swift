//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/4.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Placeholder")
      VStack {
        Text("Hello, world!")
          .frame(width: 100, height: 100, alignment: .center)
          .background(.cyan)
          .clipShape(Circle())
        Text("Sencond")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewDevice(.init(rawValue: "iPhone 13 Pro Max"))
    ContentView()
      .previewDevice(.init(rawValue: "iPhone 13 Pro Max"))
      .preferredColorScheme(.dark)
      .previewLayout(PreviewLayout.sizeThatFits)
      .padding()
  }
}

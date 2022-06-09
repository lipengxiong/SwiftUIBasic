//
//  TextView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import SwiftUI

struct TextView: View {
  var body: some View {
    VStack {
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .font(.largeTitle)
        .padding()
        .foregroundColor(.indigo)
        .border(.red, width: 2)
        .background(.green)
      Text("This is title")
        .modifier(Title())
        .foregroundColor(.red)
      Color
        .blue
        .frame(width: 300, height: 200)
        .modifier(Watermark(text: "Mark"))
    }
  }
}

struct Title: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(.blue)
      .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

struct Watermark: ViewModifier {
  var text: String
  
  func body(content: Content) -> some View {
    ZStack(alignment: .bottomTrailing) {
      content
      Text(text)
        .font(.caption)
        .foregroundColor(.white)
        .padding(5)
        .background(.black)
    }
  }
}

struct TextView_Previews: PreviewProvider {
  static var previews: some View {
    TextView()
  }
}

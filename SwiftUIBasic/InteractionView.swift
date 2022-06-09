//
//  InteractionView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import SwiftUI

struct InteractionView: View {
  var body: some View {
    VStack {
      Text("Tap")
        .onTapGesture {
          print("Tap Gesture")
        }
      Button {
        print("Button action")
      } label: {
        Text("Button")
      }
    }
  }
}

struct InteractionView_Previews: PreviewProvider {
  static var previews: some View {
    InteractionView()
  }
}

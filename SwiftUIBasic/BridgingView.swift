//
//  BridgingView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import SwiftUI

struct BridgingView: View {
  var body: some View {
    VStack {
      Text("Hello, World!")
      UIKitViewAsSwiftUI()
        .frame(width: 300, height: 100)
        .background(.orange)
      UIKitViewControllerAsSwiftUI()
    }
  }
}

struct BridgingView_Previews: PreviewProvider {
  static var previews: some View {
    BridgingView()
  }
}

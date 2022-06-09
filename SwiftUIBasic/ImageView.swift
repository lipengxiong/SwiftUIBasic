//
//  ImageView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import SwiftUI

struct ImageView: View {
  var body: some View {
    VStack(spacing: 100) {
      Image(systemName: "keyboard.fill")
//        .font(.system(size: 32))
//        .resizable()
//        .scaledToFit()
//        .frame(width: 100, height: 100, alignment: .center)
//        .foregroundColor(.red)
//        .background(.yellow)
      Image("turtlerock")
        .resizable()
//        .clipShape(Circle())
//        .aspectRatio(contentMode: .fill)
        .aspectRatio(contentMode: .fit)
        .frame(width: 120)
    }
  }
}

struct ImageView_Previews: PreviewProvider {
  static var previews: some View {
    ImageView()
  }
}

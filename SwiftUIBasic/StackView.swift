//
//  StackView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import SwiftUI

struct StackView: View {
  @Environment(\.dismiss) var dismiss

  var body: some View {
    GeometryReader { geo in
      ScrollView {
        VStack(alignment: .leading) {
          Spacer()
          HStack {
            Color.red.frame(width: 50, height: 50)
            Color.green.frame(width: 50, height: 50)
          }
          Spacer()
          VStack {
            Color.red.frame(width: 50, height: 50)
            Color.green.frame(width: 50, height: 50)
          }
          Spacer()
          ZStack {
            Color.red.frame(width: 150, height: 150)
            Color.green.frame(width: 50, height: 50)
          }
          Spacer()
          Color.blue
            .frame(width: 30, height: 30)
            .padding()
            .background(.red)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
            .padding()
            .background(.mint)
            .padding()
            .background(.orange)
            .padding()
            .background(.cyan)
            .padding()
            .background(.white)
            .padding()
            .background(.black)
            .onTapGesture {
              dismiss()
            }
          Spacer()
        }
        .frame(minWidth: geo.size.width, minHeight: geo.size.height)
      }
    }
  }
}

struct StackView_Previews: PreviewProvider {
  static var previews: some View {
    StackView()
  }
}

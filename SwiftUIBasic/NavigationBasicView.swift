//
//  NavigationView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import SwiftUI

struct NavigationBasicView: View {
  @State private var showingSheet = false

  var body: some View {
    NavigationView {
      VStack(spacing: 32) {
        NavigationLink {
          StackView()
        } label: {
          Text("push to StackView")
        }
        Button {
          showingSheet.toggle()
        } label: {
          Text("modal StackView")
        }
        .sheet(isPresented: $showingSheet, onDismiss: {
          print("Dismiss stackView")
        }, content: {
          StackView()
        })
//        .fullScreenCover(isPresented: $showingSheet) {
//          StackView()
//        }
      }
      .navigationTitle("Navigation Title")
      .navigationBarTitleDisplayMode(.large)
    }
  }
}

struct NavigationView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBasicView()
  }
}

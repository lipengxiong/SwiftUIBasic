//
//  UIKitView.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import UIKit
import SwiftUI

class UIKitView: UIView {
  let label = UILabel()

  override init(frame: CGRect) {
    super.init(frame: frame)
    label.text = "Custom View"
    label.textColor = .black
    addSubview(label)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    label.sizeToFit()
  }
}

struct UIKitViewAsSwiftUI: UIViewRepresentable {
  typealias UIViewType = UIKitView
  
  func makeUIView(context: Context) -> UIKitView {
    return UIKitView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
  }
  
  func updateUIView(_ uiView: UIKitView, context: Context) {
    print("update view")
  }
}

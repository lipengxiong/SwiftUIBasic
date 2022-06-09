//
//  UIKitViewController.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import UIKit
import SwiftUI

class UIKitViewController: UIViewController {
  let label = UILabel()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemMint
    label.text = "UIKit"
    label.textColor = .white
    view.addSubview(label)
  }

  override func viewDidLayoutSubviews() {
    label.sizeToFit()
  }
}

struct UIKitViewControllerAsSwiftUI: UIViewControllerRepresentable {
  typealias UIViewControllerType = UIKitViewController
  
  func makeUIViewController(context: Context) -> UIKitViewController {
    return UIKitViewController()
  }
  
  func updateUIViewController(_ uiViewController: UIKitViewController, context: Context) {
    print("update view controller")
  }
}

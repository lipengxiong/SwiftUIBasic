//
//  ViewController.swift
//  SwiftUIBasic
//
//  Created by Lipeng Zhang on 2022/6/5.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidLayoutSubviews() {
    if let stackView = UIHostingController(rootView: StackView()).view {
      stackView.frame = view.bounds
      view.addSubview(stackView)
    }
  }
}

struct UIKitViewControllerUsingSwiftUIView: UIViewControllerRepresentable {
  typealias UIViewControllerType = ViewController

  func makeUIViewController(context: Context) -> ViewController {
    return ViewController()
  }

  func updateUIViewController(_ uiViewController: ViewController, context: Context) {}
}

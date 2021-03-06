//
//  ViewController.swift
//  SupportKitDemo
//
//  Created by Nathan on 26/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import UIKit
import SupportKit

class ViewController: UIViewController {
  // MARK: - Private Members
  
  var supportKit = SupportKit(contactAddress: "nd@dreamr.uk")
  
  // MARK: - Lifecycle
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    supportKit.present([
      PaymentIssue(),
      BugIssue(),
      LegalIssue()
    ])
  }
  
  // MARK: - Presentation
  
  private func presentSelection(_ issue: SupportIssue) {
    let alert = UIAlertController(title: issue.title, message: issue.body, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
    self.present(alert, animated: true)
  }
}

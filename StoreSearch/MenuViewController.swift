//
//  MenuViewController.swift
//  StoreSearch
//
//  Created by Melanie Kramer on 2/28/21.
//  Copyright © 2021 Melanie Kramer. All rights reserved.
//


import UIKit

// call menuviewcontrollersendemail function
protocol MenuViewControllerDelegate: class {
  func menuViewControllerSendEmail(_ controller: MenuViewController)
}

class MenuViewController: UITableViewController {
  weak var delegate: MenuViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // MARK:- Table View Delegates
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    // if selected row 0
    if indexPath.row == 0 {
      delegate?.menuViewControllerSendEmail(self)
    }
  }
}

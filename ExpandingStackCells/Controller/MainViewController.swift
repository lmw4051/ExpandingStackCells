//
//  MainViewController.swift
//  ExpandingStackCells
//
//  Created by David on 2020/11/7.
//  Copyright © 2020 David. All rights reserved.
//

import UIKit

let estimatedHeight: CGFloat = 150
let topInset: CGFloat = 20

class MainViewController: UITableViewController {
  let viewModel = MainViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.contentInset.top = topInset
    tableView.estimatedRowHeight = estimatedHeight
    tableView.rowHeight = UITableView.automaticDimension
  }
  
  // MARK: - TableViewDataSource Methods
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.count()
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandingCell", for: indexPath) as! ExpandingCell
    cell.titleLabel?.text = viewModel.titleForRow(row: indexPath.row)
    cell.detailLabel?.text = viewModel.detailForRow(row: indexPath.row)
    return cell
  }
  
  // MARK: - TableViewDelegate Methods
  override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    if let _ = tableView.indexPathsForSelectedRows {
      tableView.beginUpdates()
      tableView.deselectRow(at: indexPath as IndexPath, animated: true)
      tableView.endUpdates()
      return nil
    }
    return indexPath
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.beginUpdates()
    tableView.endUpdates()
  }
}

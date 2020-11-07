//
//  MainViewModel.swift
//  ExpandingStackCells
//
//  Created by David on 2020/11/7.
//  Copyright © 2020 David. All rights reserved.
//

import UIKit

struct MainViewModel {
  private let items = ItemStore.defaultItems()
  
  func count() -> Int {
    return items.count
  }
  
  func titleForRow(row: Int) -> String {
    return items[row].title
  }
  
  func detailForRow(row: Int) -> String {
    return items[row].detail    
  }
}

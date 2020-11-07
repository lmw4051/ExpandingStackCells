//
//  ItemStore.swift
//  ExpandingStackCells
//
//  Created by David on 2020/11/7.
//  Copyright © 2020 David. All rights reserved.
//

import Foundation

struct ItemStore {
  static func defaultItems() -> [Item] {
    return [
      Item(title: "Item 0", detail: "Detail 0"),
      Item(title: "Item 1", detail: "Detail 1"),
      Item(title: "Item 2", detail: "Detail 2"),
    ]
  }
}

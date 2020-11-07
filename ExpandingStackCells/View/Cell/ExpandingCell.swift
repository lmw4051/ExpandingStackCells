//
//  ExpandingCell.swift
//  ExpandingStackCells
//
//  Created by David on 2020/11/7.
//  Copyright © 2020 David. All rights reserved.
//

import UIKit

class ExpandingCell: UITableViewCell {
  @IBOutlet weak var stackView: UIStackView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var detailLabel: UILabel!
  
  var title: String? {
    didSet {
      titleLabel.text = title
    }
  }
  
  var detail: String? {
    didSet {
      detailLabel.text = detail
    }
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    stackView.arrangedSubviews.last?.isHidden = true
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn, animations: {
      self.stackView.arrangedSubviews.last?.isHidden = !selected
    }, completion: nil)
  }
}

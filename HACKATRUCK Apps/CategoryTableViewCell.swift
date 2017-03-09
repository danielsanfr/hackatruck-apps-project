//
//  CategoryTableViewCell.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/9/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(_ category: Category) {
        name.text = category.name
    }

}

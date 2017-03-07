//
//  AppTableViewCell.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/7/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class AppTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var likes: UILabel!
    @IBOutlet weak var company: UILabel!

    private var app = App()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    @IBAction func onOpenInfo(_ sender: Any) {
        let url = URL(string: app.relevantLink)!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }

    func bind(_ app: App) {
        self.app = app
        name.text = app.name
        company.text = app.company
        likes.text = "\(app.likes) Likes"
    }

}

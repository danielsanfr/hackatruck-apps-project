//
//  AppDetailVIew.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class AppDetailView: UIView {

    @IBOutlet weak var appDescription: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var createdAt: UILabel!
    @IBOutlet weak var university: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func bind(_ app: App) {
        appDescription.text = app.appDescription
        company.text = app.company
        university.text = app.university
        category.text = app.category.name

        var team = ""
        for developer in app.developers {
            team += developer + ", "
        }
        let index = team.index(team.endIndex, offsetBy: -2)
        self.team.text = team.substring(to: index)
        if let createdAtDate = app.createdAt {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MMM/yyyy - hh:mm:ss"
            dateFormatter.locale = Locale.init(identifier: "en_EU")
            createdAt.text = "\(dateFormatter.string(from: createdAtDate))"
        }
    }

}

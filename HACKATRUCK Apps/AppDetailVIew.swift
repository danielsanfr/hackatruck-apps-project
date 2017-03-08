//
//  AppDetailVIew.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class AppDetailVIew: UIView {

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
    }

}

//
//  AppDetailViewController.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/7/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class AppDetailViewController: UIViewController {

    var app = App()

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var likes: UILabel!
    @IBOutlet weak var tabs: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = app.name
        company.text = company.text
        likes.text = "\(app.likes) Likes"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTabSelectionChanged() {
        print("\(tabs.selectedSegmentIndex)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  AppDetailViewController.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/7/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit
import ISScrollViewPageSwift

class AppDetailViewController: UIViewController, ISScrollViewPageDelegate {

    var app = App()

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var likes: UILabel!
    @IBOutlet weak var tabs: UISegmentedControl!
    @IBOutlet weak var scrollViewPage: ISScrollViewPage!

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = app.name
        company.text = company.text
        likes.text = "\(app.likes) Likes"
        
        scrollViewPage.scrollViewPageDelegate = self;
        scrollViewPage.setEnableBounces(false)
        scrollViewPage.setPaging(false)
        scrollViewPage.scrollViewPageType = ISScrollViewPageType.horizontally
        
        if let detailView = Bundle.main.loadNibNamed("AppDetailView", owner: self, options: nil)?.first as? AppDetailVIew {
            if let relatedsView = Bundle.main.loadNibNamed("View1", owner: self, options: nil)?.first as? UIView {
                detailView.bind(app)
                scrollViewPage.setCustomViews([detailView, relatedsView])
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewPageDidChanged(_ scrollViewPage: ISScrollViewPage, index: Int) {
        print("You are at index: \(index)")
    }

    @IBAction func onClickOpenInfo() {
        let url = URL(string: app.relevantLink)!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }

    @IBAction func onTabSelectionChanged() {
        scrollViewPage.goToIndex(tabs.selectedSegmentIndex, animated: true)
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

//
//  AppsTableViewController.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/4/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit
import Parse

class AppsTableViewController: UITableViewController {

    var apps = [App]()
    var category: Category?

    override func viewDidLoad() {
        super.viewDidLoad()

        let query = PFQuery(className: "App")
        if let cat = category {
            query.whereKey("category", equalTo: cat)
        }

        query.includeKey("category").findObjectsInBackground { (apps, error) in
            if let e = error {
                AlertHelper.showAlert(self, title: "Ocorreu um erro", message: e.localizedDescription, confirmText: "OK")
                return
            }

            if let appList = apps as? [App] {
                self.apps = appList
                self.tableView.reloadData()
            }
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return apps.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "appListCellIdentifier", for: indexPath)

        if let appCell = cell as? AppTableViewCell {
            appCell.bind(apps[indexPath.row])
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAppDetailIdentifier" {
            if let viewController = segue.destination as? AppDetailViewController {
                if let row = self.tableView.indexPathForSelectedRow?.row {
                    viewController.app = apps[row]
                }
            }
        }
    }

}

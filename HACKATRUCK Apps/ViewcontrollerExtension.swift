//
//  ViewcontrollerExtension.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    func showAlert(title: String, message: String, confirmText: String) {
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true, completion: {
            print("Alerta completo!")
        })
        let action: UIAlertAction = UIAlertAction(title: confirmText, style: .default) { (action) in
        }
        alert.addAction(action)
    }
}

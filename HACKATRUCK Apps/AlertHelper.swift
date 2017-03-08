//
//  ViewcontrollerExtension.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import UIKit

class AlertHelper {

    static func showAlert(_ viewControler: UIViewController, title: String, message: String, confirmText: String) {
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        viewControler.present(alert, animated: true, completion: {
            print("Alerta completo!")
        })
        let action: UIAlertAction = UIAlertAction(title: confirmText, style: .default) { (action) in
        }
        alert.addAction(action)
    }

}

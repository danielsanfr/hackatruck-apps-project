//
//  Category.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/9/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import Parse

class Category: PFObject {

    @NSManaged var name: String

}

extension Category : PFSubclassing {
    static func parseClassName() -> String {
        return "Category"
    }
}

//
//  App.swift
//  HACKATRUCK Apps
//
//  Created by Student on 3/4/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import Parse

class App : PFObject {
    
    @NSManaged var likes: Int
    @NSManaged var name: String
    @NSManaged var company: String
    @NSManaged var relevantLink: String
    @NSManaged var appDescription: String
    @NSManaged var category: Category
    @NSManaged var university: String
    @NSManaged var developers: [String]

}

extension App : PFSubclassing {
    static func parseClassName() -> String {
        return "App"
    }
}

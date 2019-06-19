//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var location = "St. Louis"
    var author = ""
        init(authorName : String) {
            author = authorName
        }
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    func distanceTo(target : String, current: String) -> Int {
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
    }
    
    func knownDestinations() -> [String] {
       let data = AviatrixData()
       return ["St. Louis", "Phoenix", "Denver", "SLC" ]
    }
}

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
    var distanceTraveled = 0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0
    var author = ""
        init(authorName : String) {
            author = authorName
    
        }
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let refill = Double((maxFuel) - (fuelLevel))
        let data = AviatrixData()
        fuelCost += Int(refill) * Int(data.fuelPrices[location]!)
        return refill
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: location)
        let fuelUsed = Double(distanceTraveled) / (milesPerGallon)
        fuelLevel -= fuelUsed
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

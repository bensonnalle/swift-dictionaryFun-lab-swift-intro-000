//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String : String] = ["Joe" : "Peanut Butter and Chocolate", "Tim" : "Natural Vanilla", "Sophie" : "Mexican Chocolate", "Deniz" : "Natural Vanilla", "Jim" : "Natural Vanilla", "Tom" : "Mexican Chocolate", "Susan" : "Cookies 'N' Cream"]
    

    // 2.
    
    func names(forFlavor: String) -> [String] {
        var namesForGivenFlavor: [String] = []
        for (names, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if forFlavor == favoriteFlavor {
                namesForGivenFlavor.append(names)
            }
        }
        return namesForGivenFlavor
    }
    
    
    
    // 3.
    
    func count(forFlavor: String) -> Int {
        var countPerFlavor: Int = 0
        for favoriteFlavor in favoriteFlavorsOfIceCream.values {
            if favoriteFlavor == forFlavor {
                countPerFlavor += 1
            }
        }
        return countPerFlavor
    }
    
    
    // 4.
   
    
    func flavor(forPerson: String) -> String? {
        var personsFlavor: String? = ""
        
        for (keys, values) in favoriteFlavorsOfIceCream {
            if forPerson == keys {
                personsFlavor = values
            } else {
                personsFlavor = nil
            }
        }
        return personsFlavor
    }
    
    
    
    
    // 5.
   
    
    func replace(flavor: String, forPerson: String) -> Bool {
        var personChanged: Bool = true
        for keys in favoriteFlavorsOfIceCream.keys {
            if forPerson == keys {
                favoriteFlavorsOfIceCream[forPerson] = flavor
                personChanged = true
            } else {
                personChanged = false
            }
        }
        return personChanged
    }
    
    
    
    
    // 6.
    
    
    func remove(person: String) -> Bool {
        var wasComing = true
        for keys in favoriteFlavorsOfIceCream.keys {
            if person == keys {
                favoriteFlavorsOfIceCream[keys] = nil
                wasComing = true
            } else {
                wasComing = false
            }
        }
        return wasComing
    }
    
    
    
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    // 8.
    
    
    func add(person: String, withFlavor: String) -> Bool {
        var personAdded = true
        for key in favoriteFlavorsOfIceCream.keys {
            if person != key {
                favoriteFlavorsOfIceCream["\(person)"] = "\(withFlavor)"
                personAdded = true
            } else {
                personAdded = false
            }
        }
        return personAdded
    }
    
    // 9.
    
    
    func attendeeList() -> String {
        var alphabeticalList = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            if let personFlavor = favoriteFlavorsOfIceCream[name] {
                if alphabeticalList.isEmpty {
                    alphabeticalList.append("\(name) likes \(personFlavor)")
                } else {
                    alphabeticalList.append("\n\(name) likes \(personFlavor)")
                }
            }
        }
        
        print(alphabeticalList)
        return alphabeticalList
    }


}

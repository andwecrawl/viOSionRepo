//
//  StardewValley.swift
//  viosionNavigationPractice
//
//  Created by yeoni on 2023/06/29.
//

import Foundation


struct StardewValley: Identifiable {
    var id: UUID = UUID()
    var name: String
    var sex: String
    var birthday: String
    var liked: [String]
}

let villagers: [StardewValley] = [
    
    StardewValley(name: "Sam", sex: "male", birthday: "Summer 17", liked: ["Cactus Fruit", "Maple Bar", "Pizza"]),
    
    StardewValley(name: "Alex", sex: "male", birthday: "Summer 16", liked: ["Complete Breakfast", "Salmon Dinner"]),
    
    StardewValley(name: "Elliott", sex: "male", birthday: "Summer 9", liked: ["Crab Cakes", "Lobster"]),
    
    StardewValley(name: "Harvey", sex: "male", birthday: "Winter 14", liked: ["Coffee", "Pickles"]),
    
    StardewValley(name: "Sebastian", sex: "male", birthday: "Summer 4", liked: ["Obsidian", "Frozen Tear"]),
    
    StardewValley(name: "Shane", sex: "male", birthday: "Spring 20", liked: ["Beer", "Hot Pepper"]),
    
            
    StardewValley(name: "Abigail", sex: "female", birthday: "Spring 4", liked: ["Amethyst", "Banana Pudding"]),
    
    StardewValley(name: "Emily", sex: "female", birthday: "Spring 27", liked: ["Jade", "Aquamarine"]),
    
    StardewValley(name: "Haley", sex: "female", birthday: "Winter 9", liked: ["Coconut", "Pink Cake"]),
    
    StardewValley(name: "Leah", sex: "female", birthday: "Spring 16", liked: ["Goat Cheese", "Salad"]),
    
    StardewValley(name: "Maru", sex: "female", birthday: "Summer 10", liked: ["Battery Pack", "Diamond"]),
    
    StardewValley(name: "Penny", sex: "female", birthday: "Fall 2", liked: ["Emerald", "Melon"])
]


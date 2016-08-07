//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rippedNumberList : [Int] = [6, 4, 12, 4]
        let rippedItemList : [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        shoppingList = makeShoppingList(rippedItemList, quantityOfItems: rippedNumberList)
        
        
    }
    
    
    func makeShoppingList(itemsNeeded: [String], quantityOfItems: [Int]) -> [String] {
        
        var fixedList : [String] = []

        if itemsNeeded.count == quantityOfItems.count {
            
            for (index, value) in itemsNeeded.enumerate() {
                
                fixedList.append("\(index+1). \(quantityOfItems[index]) \(value)")
                
            }

        } else {
            print("Item list is incompatible")
        }
        
        print(fixedList)
        return fixedList
    }

    
}
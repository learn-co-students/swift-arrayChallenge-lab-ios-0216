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
        
        let sideOne = [6, 4, 12, 4]
        
        let sideTwo = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        makeShoppingList(items: sideTwo, quantityOfItems: sideOne)
        
        print(shoppingList)
        if shoppingList.isEmpty {
            print("I am empty")
        }else {
            print("I am full !")

        }
        
    }
    
    func makeShoppingList(items: [String], quantityOfItems:[Int])-> Array<String>  {
        
        
    
        for (index, food) in items.enumerated() {
           
            shoppingList.append("\(index + 1). \(quantityOfItems[index]) \(food)")
            
        }
    
        
        print(" i am shopping list \(shoppingList)")
        return shoppingList
        
    }
    
}

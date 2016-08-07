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
        
        let quantity = [6, 4, 12, 4]
        let ingredient = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        shoppingList = makeShoppingList(ingredient, quantityOfItems: quantity)
        
    }
    
    func makeShoppingList(ingredients:[String], quantityOfItems:[Int]) -> [String]{
        
        var shoppingListItems: [String] = []
        
        for (index, thing) in ingredients.enumerate(){
            
            shoppingListItems.append("\(index+1). \(quantityOfItems[index]) \(thing)")
            
        }
        return shoppingListItems
    }
    
    
}
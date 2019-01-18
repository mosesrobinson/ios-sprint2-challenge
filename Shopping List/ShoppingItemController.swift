//
//  ShoppingItemController.swift
//  Shopping List
//
//  Created by Moses Robinson on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemController {
    
    init() {
        createShoppingList()
    }
    
    let itemNames = ["apple", "grapes", "milk", "muffin", "popcorn", "soda", "strawberries"]
    
    func createShoppingList() {
        for name in itemNames {
            guard let image = UIImage(named: name) else { return }
            let shoppingItem = ShoppingItem(name: name, image: image)
            shoppingList.append(shoppingItem)
        }
    }
    
    //MARK: - properties
    
    private(set) var shoppingList: [ShoppingItem] = []
}
//
//  CartManager.swift
//  klaudinq
//
//  Created by mehdimagerramov on 06.05.2023.
//

import UIKit

class CartManager {
    var item: Item?
    var cartItems: [Item] = [
        Item(imageName: "im8", title: "BOOTS LOWA", price: 160.00, description1: "Gore-Tex, membrane\nGermany", description2: "Lowa Tactical Gore-Tex membrane boots are the ultimate choice for anyone who wants to tackle any terrain with confidence. The Gore-Tex membrane provides unbeatable waterproofing and breathability, ensuring your feet stay dry and comfortable no matter the weather. The durable construction and sturdy sole provide excellent traction and support, making these boots perfect for hiking, climbing, or any other outdoor activity. With their sleek design and advanced features, our Gore-Tex membrane boots are the perfect choice for any adventurer looking to take on the great outdoors."),
        
        Item(imageName: "im9", title: "COMPASS LIQUID", price: 50.00, description1: "Swiss", description2: "Liquid compass is a must-have tool for any outdoor adventurer. With its clear, easy-to-read display and accurate readings, you can navigate with confidence no matter where your journey takes you."),
        
        Item(imageName: "im3", title: "BOOTS NORD", price: 100.00, description1: "Gore-Tex\nGermany", description2: "Nord boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months.")
    ]
    
    func addCartItem(item: Item) {
        cartItems.append(item)
        print(cartItems)
        print("\n\(cartItems.count)")
        }
    
    func removeCartItem(item: Item) {
        cartItems = cartItems.filter { $0.self != item.self }
        }
    
    func total() -> Double {
        
        var tot: Double = 0
        
        for i in 0..<cartItems.count {
            tot += cartItems[i].price
            }
        return tot
    }
    
    func getCartItems() -> [Item] {
        
        return cartItems
    }
}


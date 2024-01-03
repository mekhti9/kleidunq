//
//  Iten.swift
//  klaudinq
//
//  Created by mehdimagerramov on 28.04.2023.
//

import Foundation

struct Item: Equatable {
    
    static func == (lhs: Item, rhs: Item) -> Bool {
           return lhs.title == rhs.title && lhs.price == rhs.price
       }

    let imageName: String
    let title: String
    let price: Double
    let description1: String
    let description2: String
}

let data: [Item] = [
    Item(imageName: "im1", title: "PANTS NORD", price: 125.00, description1: "Gore-Tex, membrane\nGermany", description2: "Tactical pants are a type of durable and functional pants designed for outdoor activities and tactical operations. They typically feature multiple pockets, reinforced knees and seat, adjustable waistbands, and sturdy fabrics such as ripstop or nylon. Tactical pants are popular among hikers, hunters, military personnel, law enforcement officers, and anyone who needs reliable clothing for demanding environments. Choose from a variety of colors and styles to find the perfect pair for your next adventure."),
    
    Item(imageName: "im2", title: "BOOTS NORD", price: 80.00, description1: "Gore-Tex\nGermany", description2: "Nord boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months."),
    
    Item(imageName: "im3", title: "BOOTS NORD", price: 100.00, description1: "Gore-Tex\nGermany", description2: "Nord boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months."),
    
    Item(imageName: "im8", title: "BOOTS LOWA", price: 160.00, description1: "Gore-Tex, membrane\nGermany", description2: "Lowa Tactical Gore-Tex membrane boots are the ultimate choice for anyone who wants to tackle any terrain with confidence. The Gore-Tex membrane provides unbeatable waterproofing and breathability, ensuring your feet stay dry and comfortable no matter the weather. The durable construction and sturdy sole provide excellent traction and support, making these boots perfect for hiking, climbing, or any other outdoor activity. With their sleek design and advanced features, our Gore-Tex membrane boots are the perfect choice for any adventurer looking to take on the great outdoors."),
    
    Item(imageName: "im9", title: "COMPASS LIQUID", price: 50.00, description1: "Swiss", description2: "Liquid compass is a must-have tool for any outdoor adventurer. With its clear, easy-to-read display and accurate readings, you can navigate with confidence no matter where your journey takes you."),
    
    Item(imageName: "im10", title: "BALACLAVA NORD", price: 60.00, description1: "Belgium", description2: "Cotton tactical balaclava is the perfect accessory for any outdoor enthusiast. Made from high-quality cotton, it provides excellent protection from the elements while also keeping you comfortable and stylish."),
    
    Item(imageName: "im11", title: "BOOTS LOWA", price: 140.00, description1: "Gore-Tex, membrana\nGermany", description2: "Lowa Tactical Gore-Tex membrane boots are the ultimate choice for anyone who wants to tackle any terrain with confidence. The Gore-Tex membrane provides unbeatable waterproofing and breathability, ensuring your feet stay dry and comfortable no matter the weather. The durable construction and sturdy sole provide excellent traction and support, making these boots perfect for hiking, climbing, or any other outdoor activity. With their sleek design and advanced features, our Gore-Tex membrane boots are the perfect choice for any adventurer looking to take on the great outdoors."),
    
    Item(imageName: "im12", title: "BOOTS MIST", price: 90.00, description1: "WaterProof\nDenmark", description2: "Winter boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months."),
    
    Item(imageName: "im13", title: "BOOTS MIST", price: 80.00, description1: "Gore-Tex, membrana\nDenmark", description2: "Winter boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months."),
    
    Item(imageName: "im14", title: "BOOTS MIST", price: 90.00, description1: "WaterProof\nDenmark", description2: "Mistral boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months."),
    
    Item(imageName: "im15", title: "BELT NORD", price: 100.00, description1: "Belgium", description2: "Our leather belt is a timeless accessory that will add a touch of sophistication to any outfit. Made from high-quality leather, it is durable and designed to last for years. The classic design features a simple buckle and a smooth finish, making it versatile enough to wear with both casual and formal attire. Whether you're dressing up for a special occasion or adding a stylish accent to your everyday look, our leather belt is the perfect choice. Available in a range of sizes, it is sure to fit comfortably and securely. Invest in this wardrobe staple today and elevate your style game!"),
    
    Item(imageName: "im16", title: "BOOTS YYK", price: 225.00, description1: "Denmark", description2: "Woolen boots are the perfect combination of style and function. With their sturdy construction, waterproof design, and cozy insulation, they are the ideal choice for anyone who wants to stay warm and comfortable during even the coldest winter months."),
    
    Item(imageName: "im17", title: "BACKBAG TNF", price: 220.00, description1: "Gore-Tex, membrana\nGermany", description2: "Tactical travel bag is the ultimate companion for any globetrotter. With its spacious interior, multiple compartments, and durable construction, it is the perfect way to keep all your essentials organized and secure while on the go."),
    
    Item(imageName: "im18", title: "VEST TNF", price: 125.00, description1: "Gore-Tex, membrana\nGermany", description2: "Tactical vest is designed for the modern adventurer. With its durable construction, advanced features, and sleek design, it is the perfect choice for anyone who wants to stay warm and comfortable while exploring the great outdoors.")
]оо

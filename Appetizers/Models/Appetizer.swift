//
//  Appetizer.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/8/22.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 34, name: "Speghetti", description: "Not really an appetizer but it's so yummy why not start the meal with it?", price: 7.99, imageURL: "", calories: 450, protein: 20, carbs: 70)
    static let appetizers = [
        Appetizer(id: 1, name: "French Toast", description: "Bread dipped in eggs and then cooked", price: 5.99, imageURL: "", calories: 500, protein: 20, carbs: 50),
        Appetizer(id: 2, name: "A Fancy Salad", description: "This salad is so fancy.", price: 8.99, imageURL: "", calories: 250, protein: 5, carbs: 20),
        Appetizer(id: 3, name: "Chicken Nuggets", description: "Chicken in some kind of batter which is then fried I think. It's really not healthy but it does taste great", price: 5.99, imageURL: "", calories: 500, protein: 35, carbs: 10),
        Appetizer(id: 4, name: "Breakfast Cereal", description: "Everyone loves cereal", price: 2.00, imageURL: "", calories: 350, protein: 2, carbs: 50)
    ]
}

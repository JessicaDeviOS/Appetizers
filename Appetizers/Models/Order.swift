//
//  Order.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/15/22.
//

import SwiftUI

// like a ViewModel but not as closely coupled
final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}



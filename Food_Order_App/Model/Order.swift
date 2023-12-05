//
//  Order.swift
//  Food_Order_App
//
//  Created by عامر خان on 05/12/23.
//
import SwiftUI

final class Order: ObservableObject{
    
    @Published var items: [OrderItem] = []
    
    var totalPrice: Double{
        items.reduce(0, { $0 + $1.price})
    }
    func add(_ orderItem: OrderItem){
        items.append(orderItem)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

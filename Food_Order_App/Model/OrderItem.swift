//
//  OrderItem.swift
//  Food_Order_App
//
//  Created by عامر خان on 21/11/23.
//

import Foundation

struct OrderItem: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct OrderItemResponse: Decodable {
    let request: [OrderItem]
}

struct Mockdata {
    static let sampleOrderItem = OrderItem(id: 001,
                                           name: "Test Order",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let orderItems = [sampleOrderItem, sampleOrderItem, sampleOrderItem, sampleOrderItem]
}

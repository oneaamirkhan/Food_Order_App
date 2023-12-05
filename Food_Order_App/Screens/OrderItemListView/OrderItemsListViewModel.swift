//
//  OrderItemsListViewModel.swift
//  Food_Order_App
//
//  Created by عامر خان on 22/11/23.
//

import Foundation
import SwiftUI

final class OrderItemsListViewModel: ObservableObject{
    @Published var orderItems: [OrderItem] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedOrderItem: OrderItem?
    
    func getOrderItems() {
        isLoading = true
        NetworkManager.shared.getOrderItems { /*[self]*/ result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let orderItems):
                    self.orderItems = orderItems
                case .failure(let error):
                    switch error{
                    case .invalidResponse:
                        self.alertItem = ALertContext.invalidResponse
                        
                    case .invalidData:
                        self.alertItem = ALertContext.invalidData
                        
                    case .invalidURL:
                        self.alertItem = ALertContext.invalidURL
                        
                    case .unableToComplete:
                        self.alertItem = ALertContext.unableToComplete
                        
                    }
                }
            }
        }
    }
}

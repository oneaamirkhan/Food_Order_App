//
//  Food_Order_AppListView.swift
//  Food_Order_App
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI

struct Food_Order_AppListView: View {
    @StateObject var viewModel = OrderItemsListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.orderItems) { OrderItem in
                    OrderItemListCell(orderItem: OrderItem)
                }
                .navigationTitle("Order Here")
            }
            .onAppear(){
                viewModel.getOrderItems()
            }
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        .alert(item:$viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    Food_Order_AppListView()
}

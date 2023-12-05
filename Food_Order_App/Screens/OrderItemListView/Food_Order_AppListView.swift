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
//                        .listRowSeparator(.visible)
//                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedOrderItem = OrderItem
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("Order Here")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear(){
                viewModel.getOrderItems()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail{
                OrderItemDetailView(orderItem: viewModel.selectedOrderItem!, isShowingDetail: $viewModel.isShowingDetail)
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

//
//  OrderView.swift
//  Food_Order_App
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationView{
            
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { OrderItem in
                            OrderItemListCell(orderItem: OrderItem)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("Order Placed")
                    }label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButttonStyle())
                    
                    .padding(.bottom, 45)
                }
                
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no items in your orders. \nPlease add some delicacies.")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
}

#Preview {
    OrderView()
}



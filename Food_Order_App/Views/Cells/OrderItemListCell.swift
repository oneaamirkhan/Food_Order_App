//
//  OrderItemListCell.swift
//  Food_Order_App
//
//  Created by عامر خان on 21/11/23.
//

import SwiftUI

struct OrderItemListCell: View {
    let orderItem: OrderItem
    var body: some View {
        HStack{
            OrderItemRemoteImage(urlString: orderItem.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
            
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(orderItem.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(orderItem.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }
            .padding(.leading)
        }
    }
}

#Preview {
    OrderItemListCell(orderItem: Mockdata.sampleOrderItem)
}

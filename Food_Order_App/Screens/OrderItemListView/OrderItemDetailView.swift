//
//  OrderItemDetailView.swift
//  Food_Order_App
//
//  Created by عامر خان on 22/11/23.
//

import SwiftUI

struct OrderItemDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let orderItem: OrderItem
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack{
            OrderItemRemoteImage(urlString: orderItem.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 225)
            
            VStack {
                Text(orderItem.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(orderItem.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                
                HStack(spacing: 40){
                    NutritionInfo(title: "Calories", value: orderItem.calories)
                    NutritionInfo(title: "Carbs", value: orderItem.carbs)
                    NutritionInfo(title: "Protein", value: orderItem.protein)
                }
            }
            
            Spacer()
            
            Button{
                order.add(orderItem)
                isShowingDetail = false
            } label: {
//                OIButton(title: "$\(orderItem.price, specifier: "%.2f") - Add to Order")
                Text("$\(orderItem.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButttonStyle())
//            .buttonStyle(.bordered)
//            .tint(.brandPrimary)
//            .controlSize(.large)
            .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
        } label:{
            XDismissedButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    OrderItemDetailView(orderItem: Mockdata.sampleOrderItem, isShowingDetail: .constant(true) )
}

struct NutritionInfo: View{
    let title: String
    let value: Int
    var body: some View{
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

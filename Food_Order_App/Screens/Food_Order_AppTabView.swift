//
//  ContentView.swift
//  Food_Order_App
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI

struct Food_Order_AppTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            Food_Order_AppListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
            
        }
    }
}

#Preview {
    Food_Order_AppTabView()
}

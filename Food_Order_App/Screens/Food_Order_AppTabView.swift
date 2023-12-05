//
//  ContentView.swift
//  Food_Order_App
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI

struct Food_Order_AppTabView: View {
    var body: some View {
        TabView{
            Food_Order_AppListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                       
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimaryColor)
    }
}

#Preview {
    Food_Order_AppTabView()
}

//
//  Food_Order_AppApp.swift
//  Food_Order_App
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI

@main
struct Food_Order_AppApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            Food_Order_AppTabView().environmentObject(order)
        }
    }
}

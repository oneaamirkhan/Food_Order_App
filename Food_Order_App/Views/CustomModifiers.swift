//
//  CustomModifiers.swift
//  Food_Order_App
//
//  Created by عامر خان on 05/12/23.
//

import SwiftUI

struct StandardButttonStyle: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}


//
//  XDismissedButton.swift
//  Food_Order_App
//
//  Created by عامر خان on 23/11/23.
//

import SwiftUI

struct XDismissedButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
            
        }
    }
}

#Preview {
    XDismissedButton()
}

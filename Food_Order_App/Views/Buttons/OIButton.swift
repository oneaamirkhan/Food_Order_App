//
//  OIButton.swift
//  Food_Order_App
//
//  Created by عامر خان on 23/11/23.
//

import SwiftUI

struct OIButton: View {
    var title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    OIButton(title: "Test Title")
}

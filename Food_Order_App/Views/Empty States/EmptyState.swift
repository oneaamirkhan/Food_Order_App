//
//  EmptyState.swift
//  Food_Order_App
//
//  Created by عامر خان on 04/12/23.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    var body: some View {
        
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }.offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our message. \n I'm making it for long for testing.")
}

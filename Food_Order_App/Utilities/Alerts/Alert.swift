//
//  Alert.swift
//  Food_Order_App
//
//  Created by عامر خان on 22/11/23.
//

import SwiftUI


struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct ALertContext{
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid, Please contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting to the server, if this persists, please contact support."),
                                      dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request this time, please check your internet connection."),
                                            dismissButton: .default(Text("Ok")))
}

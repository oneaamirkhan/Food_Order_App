//
//  User.swift
//  Food_Order_App
//
//  Created by عامر خان on 23/11/23.
//

import Foundation
import SwiftUI

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}

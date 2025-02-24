//
//  skillinfo.swift
//  Sensei
//
//  Created by Kenzo Yubitani (student LM) on 2/26/25.
//

import Foundation
struct skillinfo: Identifiable{
    let id = UUID()
    var name: String
    var phone: String
    var email: String
    var picture: String
    var homeaddress: String
    var shareLocation: Bool = false
    var friend: Bool = false
    var contrast: Double = 1.0
    
    init(name: String = "Wattster", phone: String = "610-346-5060", email: String = "kommoken@gmail.com", picture: String = "akron", homeaddress: String = "Somewhere in Ardmore Ave") {
        self.name = name
        self.phone = phone
        self.email = email
        self.picture = picture
        self.homeaddress = homeaddress
        
    }
}

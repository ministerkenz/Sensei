//
//  ContactView.swift
//  ContactInfo
//
//  Created by Kenzo Yubitani (student LM) on 11/11/24.
//

import SwiftUI

struct skillinfoview: View {
    
    @State var contacts : [skillinfo] = [
        skillinfo(name:"Sara", phone: "1111111111", email: "sara@gmail.com", picture: "sarah"),
        skillinfo(name:"Bob", phone: "2222222222", email: "bob@gmail.com", picture: "akron"),
        skillinfo(name:"Mansor", phone: "3333333333", email: "mansor@gmail.com"),
        skillinfo(name:"Kai", phone: "4444444444", email: "kai@gmail.com", picture: "ben"),
        skillinfo(name:"Ethan", phone: "5555555555", email: "ethan@gmail.com", picture: "idris"),
        skillinfo(name:"Kate", phone: "6666666666", email: "kate@gmail.com", picture: "bob"),
        skillinfo(name:"Grace", phone: "7777777777", email: "grace@gmail.com", picture: "linda")
        
    ]
    
    
    var body: some View {
        TabView {
            Navigation(contacts: $contacts)
                .tabItem {
                    Image(systemName: "person")
                    Text("contacts")
                }
            Text("keypad")
                .tabItem {
                    Image(systemName: "circle.grid.3x3.fill")
                    Text("keypad")
                }
            Text("good job")
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("good job")
                }
            
        }
        
    }
}

#Preview {
    skillinfoview()
}

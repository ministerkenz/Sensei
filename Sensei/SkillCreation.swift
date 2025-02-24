//
//  CreateContact.swift
//  ContactInfo
//
//  Created by Kenzo Yubitani (student LM) on 11/25/24.
//

import SwiftUI

struct SkillCreation: View {
    @Binding var contact: skillinfo
    @Binding var showSheet: Bool
     
     var body: some View {
         VStack{
             Image(contact.picture)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .clipShape(Circle())
                 .padding()
                 .contrast(contact.contrast)
             TextField("name", text: $contact.name)
                 .font(.title)
                 .padding(.horizontal)
             TextField("phone number", text: $contact.phone)
                 .padding(.horizontal)
                 .keyboardType(.phonePad)
             TextField("email address", text: $contact.email)
                 .padding(.horizontal)
                 .keyboardType(.emailAddress)
             TextField("home address", text: $contact.homeaddress)
                 .padding(.horizontal)
                 .keyboardType(.emailAddress)
             Toggle("Share Location", isOn: $contact.shareLocation)
                 .padding(.horizontal)
             Toggle("Are they a friend?", isOn: $contact.friend)
                 .padding(.horizontal)
             Slider(value: $contact.contrast, in: 0...10)
           
             Spacer()
             
             Button(action: {
                 showSheet.toggle()
             }, label: {
                 Text("Save Contact")
             })
             
         }
     }
}

#Preview {
    SkillCreation(contact: Binding.constant(skillinfo()), showSheet: Binding.constant(true))
}

//
//  datePickerPage.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/15/23.
//

import SwiftUI

struct datePickerPage: View {
    @Binding var name : String
    @State var selectedDate: Date = Date()
    var body: some View {
        NavigationStack {
            VStack {
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    .padding([.leading, .bottom, .trailing])
                NavigationLink(destination: nextPage(name: .constant(name), selectedDate: .constant(Date()))) {
                    Text("Enter")
//                        .font(.title)
//                        .fontWeight(.ultraLight)
//                        .padding(.top)
                }
            }
        }
    }
    
    struct datePickerPage_Previews: PreviewProvider {
        static var previews: some View {
            datePickerPage(name: .constant("User"))
        }
    }
}

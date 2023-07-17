//
//  nextPage.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/13/23.
//

import SwiftUI

struct nextPage: View {
    @Binding var name : String
<<<<<<< Updated upstream
    
=======
    @Binding var selectedDate: Date
>>>>>>> Stashed changes
    var body: some View {
        VStack {
            Text("Welcome, \(name)")
                .font(.title)
                .fontWeight(.ultraLight)
                .frame(maxWidth: .infinity, alignment: .leading)
<<<<<<< Updated upstream
                .padding(.bottom, 700.0)
                .padding(.leading, 22.0)
        }
=======
                .padding(.bottom, -10.0)
//<<<<<<< Updated upstream
                .padding(.leading, 20.0)
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                .font(.title2)
                .fontWeight(.ultraLight)
                .bold()
                .foregroundColor(Color.accentColor)
                .padding()
                .animation(.spring(), value: selectedDate)
                .frame(width: 375 , alignment: .leading)
                
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .padding(.horizontal)
                .padding(.bottom,250.0)
                .datePickerStyle(.graphical)
            Divider()
        }

                .navigationBarBackButtonHidden(true)
>>>>>>> Stashed changes
    }
    }


struct nextPage_Previews: PreviewProvider {
    static var previews: some View {
        nextPage(name: .constant("User") , selectedDate: .constant((Date())))
    }
}


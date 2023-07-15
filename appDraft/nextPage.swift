//
//  nextPage.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/13/23.
//

import SwiftUI

struct nextPage: View {
    @Binding var name : String
    
    var body: some View {
        VStack {
            Text("Welcome, \(name)")
                .font(.title)
                .fontWeight(.ultraLight)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 700.0)
                .padding(.leading, 22.0)
        }
    }
}

struct nextPage_Previews: PreviewProvider {
    static var previews: some View {
        nextPage(name: .constant("User"))
    }
}

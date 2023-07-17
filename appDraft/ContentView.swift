//
//  ContentView.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State public var name = ""
    @State private var welcome = "Welcome, User!"

    var body: some View {
        NavigationStack {
            ZStack {
                Text(welcome)
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 220.0)
                VStack {
                    Text("Let's make some cents")
                        .font(.title)
                        .fontWeight(.ultraLight)
                        .padding(-10.0)
                    TextField("type name here", text: $name)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .fontWeight(.ultraLight)
                        .border(Color.gray, width: 1)
                        .padding([.top, .leading, .trailing], 20.0)
                    NavigationLink(destination: nextPage(name: .constant(name), selectedDate: .constant(Date()))) {
                        Text("Enter")
                            .font(.title)
                            .fontWeight(.ultraLight)
                            .padding(.top)
                    }
                    
                    
                    
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

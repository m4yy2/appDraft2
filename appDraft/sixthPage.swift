//
//  sixthPage.swift
//  appDraft
//
//  Created by Scholar on 7/18/23.
//


import SwiftUI

struct sixthPage: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    var body: some View {
        NavigationStack {
            Divider()
            .navigationBarBackButtonHidden(true)
            .toolbar{
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: nextPage(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "house")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: thirdPage(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "chart.pie")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: fourthPage(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "list.bullet")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: fifthPage(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "books.vertical")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: sixthPage(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "lightbulb")
                                .padding(.horizontal)
                    }
                }
             }
            }
    }
}

struct sixthPage_Previews: PreviewProvider {
    static var previews: some View {
        sixthPage(name: .constant("User") , selectedDate: .constant((Date())))
    }
}

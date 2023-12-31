//
//  sixthPage.swift
//  appDraft
//
//  Created by Scholar on 7/18/23.
//


import SwiftUI
import UIKit

struct sixthPage: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    var body: some View {
//        storyboardview().edgesIgnoringSafeArea(.all)
        NavigationStack {
            Divider()
            .navigationBarBackButtonHidden(true)
            .toolbar{
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: EventsCalendarView(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "house")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: EventsListView(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "list.bullet.clipboard")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: fourthPage(name: .constant(name), selectedDate: .constant(Date()))){
                            Image(systemName: "chart.pie")
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
                            Image(systemName: "lightbulb.fill")
                                .padding(.horizontal)
                    }
                }
             }
            }
    }
}

//struct sixthPage_Previews: PreviewProvider {
//    static var previews: some View {
//        sixthPage(name: .constant("User") , selectedDate: .constant((Date())))
//    }
//}
//struct storyboardview: UIViewControllerRepresentable{
//    func makeUIViewController(context: Context) ->  UIViewController {
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let controller = storyboard.instantiateViewController(identifier: "Home")
//        return controller
//    }
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//         
//    }
//    }

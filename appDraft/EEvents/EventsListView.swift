//
//  EventsListView.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/20/23.
//

import SwiftUI

struct EventsListView: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    @EnvironmentObject var myEvents: EventStore
    @State private var formType: EventFormType?
    var body: some View {
        NavigationStack {
            List {
                ForEach(myEvents.events.sorted {$0.date < $1.date }) { event in
                    ListViewRow(event: event, formType: $formType)
                    .swipeActions {
                        Button(role: .destructive) {
                            myEvents.delete(event)
                        } label: {
                            Image(systemName: "trash")
                        }
                    }
                }
            }
            .navigationTitle("Calendar Events")
            .sheet(item: $formType) { $0 }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        formType = .new
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                    }
                }
            }
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
                            Image(systemName: "list.bullet.clipboard.fill")
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
                            Image(systemName: "lightbulb")
                                .padding(.horizontal)
                    }
                }
             }
        }
    }
}

struct EventsListView_Previews: PreviewProvider {
    static var previews: some View {
        EventsListView(name: .constant("User") , selectedDate: .constant((Date())))
            .environmentObject(EventStore(preview: true))
    }
}

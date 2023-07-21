//
//  EventsCalendarView.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/20/23.
//

import SwiftUI

struct EventsCalendarView: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    @EnvironmentObject var eventStore:EventStore
    @EnvironmentObject var myEvents: EventStore
    @State private var dateSelected: DateComponents?
    @State private var displayEvents = false
    @State private var formType: EventFormType?
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome, \(name)")
             //       .italic()
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .foregroundColor(Color.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    .padding(.bottom, -5.0)
                    .padding(.leading, -10.0)
            }
            
    //        .padding(.bottom, -10.0)
            .padding(.leading, 20.0)
                ScrollView{
                    CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture),
                                 eventStore: eventStore,
                                 dateSelected: $dateSelected,
                                 displayEvents: $displayEvents)
                    .padding(.horizontal)
                    
                    //
                }
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            formType = .new
                        }label: {
                            Image(systemName: "plus.circle.fill")
                                .imageScale(.large )
                        }
                    }
                }
                .sheet(item: $formType) {$0}
                .sheet(isPresented: $displayEvents) {
                    DaysEventsListView(dateSelected: $dateSelected)
                        .presentationDetents([.medium,.large])
                }
            Divider()
            Text("Let's make some ¢ents!")
                .font(.largeTitle)
                .italic()

            
          

            
       //         .navigationTitle("Calendar View")
            Divider()
                .navigationBarBackButtonHidden(true)
                .toolbar{
                        ToolbarItem(placement: .bottomBar){
                            NavigationLink(destination: EventsCalendarView(name: .constant(name), selectedDate: .constant(Date()))){
                                Image(systemName: "house.fill")
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
                                Image(systemName: "lightbulb")
                                    .padding(.horizontal)
                        }
                    }
                 }
            
        }
        }

    }


struct EventsCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        EventsCalendarView(name: .constant("User") , selectedDate: .constant((Date())))
            .environmentObject(EventStore(preview: true))
    }
}


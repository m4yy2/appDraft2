//
//  nextPage.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/13/23.
//
/*
import SwiftUI

struct nextPage: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    var body: some View {
        NavigationStack{
            VStack {
                Text("Welcome, \(name)")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    .padding(.bottom, -5.0)
                    .padding(.leading, 5.0)
            }
            
            .padding(.bottom, -10.0)

            .padding(.leading, 20.0)
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                .font(.title2)
                .fontWeight(.ultraLight)
                .bold()
                .foregroundColor(Color.accentColor)
                .padding()
                .animation(.spring(), value: selectedDate)
                .frame(width: 375 , alignment: .leading)
            NavigationLink(destination: EventsListView(name: .constant(name), selectedDate: .constant(Date()))){
                Image(systemName: "plus.app")
                }
                    .offset(y: -350)
                    .frame(width: 375 , alignment: .trailing)
//            Divider().frame(height: 1)
//            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
//                .padding(.horizontal)
//                .padding(.bottom,250.0)
//                .datePickerStyle(.graphical)
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
        struct nextPage_Previews: PreviewProvider {
            static var previews: some View {
                nextPage(name: .constant("User") , selectedDate: .constant((Date())))
            }
        }
    }
 /**/*/

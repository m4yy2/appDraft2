//
//  fourthPage.swift
//  appDraft
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
import Charts


struct fourthPage: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    var body: some View {
        
        NavigationStack {
            
            Text("Goal Chart")
                .italic()
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding([.top, .leading], 20.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                .font(.title2)
                .fontWeight(.ultraLight)
                .bold()
                .foregroundColor(Color.accentColor)
                .padding(.leading, 10.0)
                .animation(.spring(), value: selectedDate)
                .frame(width: 375 , alignment: .leading)
            Image("pie2")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)

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
                            Image(systemName: "chart.pie.fill")
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

struct fourthPage_Previews: PreviewProvider {
    static var previews: some View {
        fourthPage(name: .constant("User") , selectedDate: .constant((Date())))
    }
}

//
//  StartTabView.swift
//  appDraft
//
//  Created by Maci Bella-Dai Tu on 7/20/23.
//

import SwiftUI

struct StartTabView: View {
    @EnvironmentObject var myEvents: EventStore
    var body: some View {
        TabView{
            EventsListView(name: .constant("User") , selectedDate: .constant((Date())))
                .tabItem {
                    Label("List", systemImage: "list.triangle")
                }
          EventsCalendarView(name: .constant("User") , selectedDate: .constant((Date())))
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                    
                }
        }
    }
}

struct StartTabView_Previews: PreviewProvider {
    static var previews: some View {
        StartTabView()
            .environmentObject(EventStore(preview: true))
    }
}

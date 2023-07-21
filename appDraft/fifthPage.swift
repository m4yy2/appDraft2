//
//  fifthPage.swift
//  appDraft
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct fifthPage: View {
    @Binding var name : String
    @Binding var selectedDate: Date
    
    @State private var showSpendSave = false
    @State private var showInvesting = false
    var body: some View {
    NavigationStack {
        ZStack{
            Image("blue2")
                .resizable(resizingMode: .stretch)
                .edgesIgnoringSafeArea(.top)
                
       //(spacing: 20) {
            
            ScrollView{
                
                VStack {
                    Spacer()
                    Spacer()
                    Text("Financial Literacy💸")
                        .italic()
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(.all, 25.0)
                    
                    Text("Want to sharpen your financial knowledge? Click on each button to learn important rules and habits!")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50.0)
                    
                    Button(action:
                            {showSpendSave.toggle()})
                    {
                        Text("Spend & Save")
                            .foregroundColor(Color.blue)
                    }
                    .padding(.top, 75.0)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(.white)
                    Spacer()
                    
                    if showSpendSave {
                        Text("The Golden Formula")
                            .font(.title)
                            .padding(.top)
                        Text("1. Think, is it a want or a need?")
                            .font(.title2)
                            .padding(.all)
                        Text("  A want is something you desire to have but will be fine even if you don’t purchase.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        Text("Differentiating between wants and needs can be difficult, but it helps to think about the price of each purchase, and how it will impact your life.")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .font(.title3)
        
                            
                        VStack {
                            Image("tooth")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal)
                                .cornerRadius(30.0)
                            Text("A toothbrush is a need, however, an electric toothbrush is a want because your life will not be hindered without it, whereas not having a regular one at all will.")
                                .font(.title2)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                            
                            Image("elec")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal)
                                .cornerRadius(30.0)
                                
                        }
                    }
                    
                    
                    
                    
                    Button(action:
                            {showInvesting.toggle()})
                    {
                        Text("Investing")
                            .foregroundColor(Color.blue)
                    }
                    .padding(.top)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(.white)
                    Spacer()
                    
                    if showInvesting {
                        Text("  While responsibly saving, it is important to not leave your money idle. Investing is a great way to make your money work for you, and presents an opportunity for it to grow!")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding(.all)
                        Text("Terms to Know!")
                            .font(.title2)
                            .padding(.bottom)
                        
                        VStack{
                            Image("money")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal)
                                .cornerRadius(30.0)
                        }
                        
                        Text("1. Compounding is the ability of an asset to increase, and increase on top of its principal earnings.")
                            .font(.title3)
                            .padding(.all)
                        
                        VStack{
                            Image("stockMarket")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal)
                                .cornerRadius(30.0)
                        }
                        
                        
                        Text("2. Stocks are a share in a company, and can earn you money based on how the company does financially.")
                            .font(.title3)
                            .padding(.all)
                        
                        VStack{
                            Image("savings")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal)
                                .cornerRadius(30.0)
                        }
                        
                        Text("3. Savings accounts are low risk ways to save your money and are federally insured. They can earn you more money as interest rates go up, but are also guaranteed by the bank to not lose you any money.")
                            .font(.title3)
                            .padding([.top, .leading, .trailing])
                    }
                    
                    
                    
                }
                
                
            }
                    
                    
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
                                            Image(systemName: "books.vertical.fill")
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
            
            
        }
    
    
    
    
    struct fifthPage_Previews: PreviewProvider {
        static var previews: some View {
            fifthPage(name: .constant("User") , selectedDate: .constant((Date())))
        }
    }

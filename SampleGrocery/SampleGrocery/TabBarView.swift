//
//  TabBarView.swift
//  SampleGrocery
//
//  Created by Intern IOS on 26/05/23.
//

import SwiftUI
struct TabBarView: View {
    
   @State var selectedTab = "0"
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    TabView(selection: $selectedTab) {
                    
                       ContentView()
                            .tag("0")
                            .tabItem {
                                
                                    VStack {
                                        Image(systemName: "house")
                                        Text("HOME")
                                    
                                }
                                   
                            }
                        FavouriteView()
                            .tag("1")
                            .tabItem {
                                VStack{
                                    Image(systemName: "heart")
                                    Text("FAVOURITES")
                                }
                            }
                        SettingsView()
                            .tag("2")
                            .tabItem {
                                VStack {
                                    Image(systemName: "gearshape")
                                    Text("SETTINGS")
                                }
                            }
                            .cornerRadius(10)
                          
                    }
                   
                }
                }
            
        }
            
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}



struct FavouriteView:View {
    var body: some View {
        Text("hai")
    }
}
struct SettingsView:View {
    var body: some View {
        Text("hello")
    }
}


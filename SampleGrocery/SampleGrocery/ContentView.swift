//
//  ContentView.swift
//  SampleGrocery
//
//  Created by Intern IOS on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var grocery = ProductViewModel()
    let columns : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var body: some View {
        NavigationView {
            VStack() {
                ScrollView{
                    LazyVGrid(columns:columns) {
                        ForEach(grocery.productData ?? [Data]() ,id: \.id) {
                            groceryItem in
                            Text(groceryItem.title)
                                .font(.system(size: 20))
                            Text("hai hello")
                        }
                    }
                    
                    .onAppear {
                        grocery.getAll()
                    }
                }
                
               
            }
            .navigationBarTitle(Text("Categories"),displayMode: .inline)
            .fontWeight(.bold)
            
        }
    }
   
}
struct ContentView_Previews : PreviewProvider {
    static var previews: some View{
        ContentView(grocery: ProductViewModel())
    }
}

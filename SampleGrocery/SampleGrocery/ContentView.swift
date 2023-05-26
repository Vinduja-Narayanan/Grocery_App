//
//  ContentView.swift
//  SampleGrocery
//
//  Created by Intern IOS on 19/05/23.
//

import SwiftUI

struct ProductTypes: Identifiable {
    let id: Int
    let name: String
    let image: String
}

struct ContentView: View {
   
    @State var type = ProductTypes.self
    @ObservedObject var grocery = ProductViewModel()
    let columns = Array(repeating: GridItem(.flexible(),spacing: 20),count: 2)
    
    let productTypes = [ProductTypes(id: 1, name: "Vegetables", image: "vegetables"),ProductTypes(id: 2, name: "Fruits", image: "fruits"),ProductTypes(id: 3, name: "Bakery", image: "bakery"),ProductTypes(id: 4, name: "Diary", image: "diary"),ProductTypes(id: 5, name: "Vegans", image: "vegans")]
    
    var body: some View {
        NavigationView {
            VStack() {
                ScrollView{
                    NavigationLink(destination: ProductListView(grocery: ProductViewModel())) {
                        VStack(spacing: 25, content: {
                            LazyVGrid(columns:columns,alignment: .center,spacing: 50) {
                                ForEach(productTypes) { type in
                                    VStack (alignment: .center, content: {
                                        padding(30)
                                        Image (type.image)
                                            .resizable()
                                            .clipShape(Circle())
                                            .scaledToFill()
                                            .frame(width: 150,height: 150)
                                        
                                            
                                        Text(type.name)
                                            .font(.system(size: 15))
                                            .foregroundColor(Color.black)
                                       
                                    }
                                )}
                                
                                .frame( width: 150, height: 150)
                            }
                        }
                            
                    )}
                }
                }
            .navigationBarTitle(Text("Categories"),displayMode: .inline)
            }
          
        }
    }
    
   

struct ContentView_Previews : PreviewProvider {
    static var previews: some View{
        ContentView( grocery: ProductViewModel())
    }
}

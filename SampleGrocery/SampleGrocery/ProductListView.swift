//
//  ProductListView.swift
//  SampleGrocery
//
//  Created by Intern IOS on 26/05/23.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var grocery : ProductViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(grocery: ProductViewModel())
    }
}

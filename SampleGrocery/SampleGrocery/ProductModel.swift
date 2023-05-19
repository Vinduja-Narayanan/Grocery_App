//
//  ProductModel.swift
//  SampleGrocery
//
//  Created by Intern IOS on 19/05/23.
//

import Foundation

struct ProductModel : Decodable {
    let productData : [Data]
    
    private enum CodingKeys:String,CodingKey {
        case productData = "data"
    }
}
struct Data : Identifiable,Decodable {
    var id : Int
    var title :String
    var type : String
    var description : String
    var filename : String
    var price : Float
    var rating : Int
}


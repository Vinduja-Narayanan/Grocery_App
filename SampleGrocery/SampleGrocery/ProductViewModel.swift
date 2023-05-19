//
//  ProductViewModel.swift
//  SampleGrocery
//
//  Created by Intern IOS on 19/05/23.
//

import Foundation

class ProductViewModel : ObservableObject {
    @Published var productData : [Data]? = [Data]()
    func getAll() {
        guard let url = URL(string: "https://016ebcfe-e5ca-4e6b-9f8c-0f8feb7231dd.mock.pstmn.io/getGroceries")
        else {
            fatalError("Invalid URL")
        }
                URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
                    let product = try? JSONDecoder().decode(ProductModel.self, from: data)
                    print(product?.productData)
                    if let product = product {
                        DispatchQueue.main.async {
                            self.productData = product.productData
                            print(product)
                        }
                    }
                        
                }.resume()
    }
}

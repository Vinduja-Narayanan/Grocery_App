//
//  SampleGroceryApp.swift
//  SampleGrocery
//
//  Created by Intern IOS on 19/05/23.
//

import SwiftUI

@main
struct SampleGroceryApp: App {
    @StateObject var grocery = ProductViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView(grocery:grocery)
                
        }
    }
}

//
//  SplashScreenView.swift
//  SampleGrocery
//
//  Created by Intern IOS on 26/05/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 1.0
    @State private var opacity = 0.5
    var body: some View {
        if isActive  {
            TabBarView()
        } else {
            
            VStack{
                
                    Image("grocery")
                        .frame(width: 50,height: 50)
                        .padding(20)
                    Text("Groceries")
                    .font(.system(size: 20, weight: .bold ))
                        
                }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear(){
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

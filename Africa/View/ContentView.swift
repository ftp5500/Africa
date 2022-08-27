//
//  ContentView.swift
//  Africa
//
//  Created by Ali on 8/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                CoverImageComponent()
                    .frame(height: 262)
                
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            }//: List
            .navigationBarTitle("Africa", displayMode: .large)
        }//: NAvigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
        
        
    }
}

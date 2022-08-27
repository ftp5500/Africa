//
//  CoverImageComponent.swift
//  Africa
//
//  Created by Ali on 8/27/22.
//

import SwiftUI

struct CoverImageComponent: View {
    let coverImages:[CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
                    
            }
        }
        .tabViewStyle(PageTabViewStyle())
     
    }
}

struct CoverImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageComponent()
            .previewDevice("iPhone 12")
            .previewLayout(.fixed(width: 400, height: 300))
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
           
            
    }
}

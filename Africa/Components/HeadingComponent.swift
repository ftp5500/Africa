//
//  HeadingComponent.swift
//  Africa
//
//  Created by Ali on 28/08/2022.
//

import SwiftUI

struct HeadingComponent: View {
    //MARK: - PROPERTIES
    var headingImage:String
    var headingText:String
    //MARK: - FUNCTIONS
    
    //MARK: - BODY

    var body: some View {
        
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//: HStack
        
    }
}

//MARK: - PREVIEW
struct HeadingComponent_Previews: PreviewProvider {
 
    static var previews: some View {
        HeadingComponent(headingImage:"photo.on.rectangle.angled", headingText:"Widlerness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding(.horizontal)
    }
}

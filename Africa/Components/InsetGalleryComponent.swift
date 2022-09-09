//
//  InsetGalleryComponent.swift
//  Africa
//
//  Created by Ali on 06/09/2022.
//

import SwiftUI

struct InsetGalleryComponent: View {
    //MARK: - PROPERTIES
    let animal:Animal
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
 
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false) {
            HStack {
                ForEach(animal.gallery , id: \.self ) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                    .cornerRadius(12)
                }//: LOOP
            }//: HStack
        }//: Scroll
    }
}
//MARK: - PREVIEW
struct InsetGalleryComponent_Previews: PreviewProvider {
    static let animal : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryComponent(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

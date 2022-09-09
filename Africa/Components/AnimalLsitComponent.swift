//
//  AnimalLsitComponent.swift
//  Africa
//
//  Created by Ali on 8/27/22.
//

import SwiftUI

struct AnimalLsitComponent: View {
    //MARK: - PROPERTIES
    var animal:Animal
    //MARK: - FUNCTIONS
    
    //MARK: - BODY

    var body: some View {
   
        HStack(alignment: .top , spacing: 16){
            Image(animal.image)
                        .resizable()
                        .scaledToFill()
                        .frame( width: 90 ,height: 90)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text(animal.name)
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.accentColor)
                        
                        Text(animal.headline)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .padding(.trailing , 12)

                    }//: VStack
                    
                
                    
                }//: HSTACK
        .listRowBackground(Color.clear)
            
        
    }
}

//MARK: - PREVIEW
struct AnimalLsitComponent_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalLsitComponent(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12")
            .padding()
          
    }
}

//
//  AnimalLsitComponent.swift
//  Africa
//
//  Created by Ali on 8/27/22.
//

import SwiftUI

struct AnimalLsitComponent: View {
    var body: some View {
   
        HStack(alignment: .top , spacing: 16){
                    Image("lion")
                        .resizable()
                        .scaledToFill()
                        .frame( width: 90 ,height: 90)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Title")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.accentColor)
                        
                        Text("The world's most social felines, lions roam the savannas and grasslands of the African continent")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)

                    }
                
                    
                }
            
        
    }
}

struct AnimalLsitComponent_Previews: PreviewProvider {
    static var previews: some View {
        AnimalLsitComponent()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12")
            .padding()
          
    }
}

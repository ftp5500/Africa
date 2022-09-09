//
//  InsetFactComponent.swift
//  Africa
//
//  Created by Ali on 06/09/2022.
//

import SwiftUI

struct InsetFactComponent: View {
    //MARK: - PROPERTIES
    var animal:Animal
    //MARK: - FUNCTIONS
    
    //MARK: - BODY

    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact , id: \.self) { item in
                    Text(item)
                        
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148 , idealHeight: 168 , maxHeight: 180)
            
        }//: GroupBox
    }
}
//MARK: - PREVIEW
struct InsetFactComponent_Previews: PreviewProvider {
    static let animal:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactComponent(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

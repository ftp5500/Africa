//
//  ExternalWebComponent.swift
//  Africa
//
//  Created by Ali on 08/09/2022.
//

import SwiftUI

struct ExternalWebComponent: View {
    //MARK: - PROPERTIES
    let animal:Animal
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name , destination: (URL(string: animal.link) ?? URL(string: "https://www.google.com/"))!)
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}

//MARK: - PREVIEW

struct ExternalWebComponent_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebComponent(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDevice("iPhone 12")
    }
}

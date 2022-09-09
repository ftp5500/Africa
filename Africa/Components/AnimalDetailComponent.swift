//
//  AnimalDetailComponent.swift
//  Africa
//
//  Created by Ali on 28/08/2022.
//

import SwiftUI

struct AnimalDetailComponent: View {
    //MARK: - PROPERTIES
    let animal:Animal
    
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical , showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                //: HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal)
               
                //: TITLE
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .offset(y:24)
                            .frame(height:6)
                    )
                
                //: HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                //: GALLERY
                Group{
                    HeadingComponent(headingImage:"photo.on.rectangle.angled", headingText:"Widlerness in Pictures")
                    
                    InsetGalleryComponent(animal: animal)
                }
                .padding(.horizontal)
                
                
                //: FACTS
                
                Group{
                    HeadingComponent(headingImage: "questionmark.circle", headingText: "Facts about \(animal.name)")
                    
                    InsetFactComponent(animal: animal)
                       
                }
                .padding(.horizontal)
                //: DESCRIPTION
                
                Group{
                    HeadingComponent(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1.0)
                        .padding(.horizontal)
                }
                .padding(.horizontal)
                //: MAP
                Group{
                    HeadingComponent(headingImage: "map", headingText: "National Parks")
                    
                    lnsetMapComponent()
                    
                }
                .padding(.horizontal)
                //: LINK
                
                Group{
                    HeadingComponent(headingImage: "books.vertical", headingText: "Learn more")
                    ExternalWebComponent(animal: animal)
                }
            }//: VStack
            .navigationBarTitle("Learn more \(animal.name)", displayMode: .inline)
        }//: Scroll
    }
}


//MARK: - PREVIEW
struct AnimalDetailComponent_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailComponent(animal: animals[0])
        }
        .previewDevice("iPhone 12")
    }
}

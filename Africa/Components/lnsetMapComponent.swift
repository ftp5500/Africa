//
//  lnsetMapComponent.swift
//  Africa
//
//  Created by Ali on 07/09/2022.
//

import SwiftUI
import MapKit


struct lnsetMapComponent: View {
    //MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 3.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY

    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Location")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//: HSTACK
                    .padding(.vertical , 10)
                    .padding(.horizontal , 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }//: NAVIGATION
                    .padding()
                ,alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}
//MARK: - PREVIEW
struct lnsetMapComponent_Previews: PreviewProvider {
    static var previews: some View {
        lnsetMapComponent()
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDevice("iPhone 12")
    }
}

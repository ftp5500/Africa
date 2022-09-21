//
//  MapAnnotationComponent.swift
//  Africa
//
//  Created by Ali on 20/09/2022.
//

import SwiftUI

struct MapAnnotationComponent: View {
    var locationImage:NationalParkLocation
    @State private var isAnimation:Bool = false
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 1)
                .frame(width: 48, height: 48, alignment: .center)
                .scaleEffect(isAnimation ? 2 : 1)
                .opacity(isAnimation ? 0 : 1)
                
                .foregroundColor(.accentColor)
            Circle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.accentColor)
            Image(locationImage.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: false)){
                isAnimation = true 
            }
        }
    }
}

struct MapAnnotationComponent_Previews: PreviewProvider {
    static var locationImage:[NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationComponent(locationImage: locationImage[0])
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12")
            .padding()
    }
}

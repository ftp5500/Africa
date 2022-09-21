//
//  MotionAnimationComponent.swift
//  Africa
//
//  Created by Ali on 20/09/2022.
//

import SwiftUI

struct MotionAnimationComponent: View {
    @State private var randomCircle = Int.random(in: 12...16)
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id:\.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: 256, height: 256, alignment: .center)
                        .position(
                            x: geometry.size.width / 2,
                            y: geometry.size.height / 2
                        )
                }//: End loop
                Text("Width: \(Int(geometry.size.width)) Hight: \(Int(geometry.size.height))")
            }//: ZSTACK
        }//: Geometry
                    
         
    }
}

struct MotionAnimationComponent_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationComponent()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12")
            .padding()
    }
}

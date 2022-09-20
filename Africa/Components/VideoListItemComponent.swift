//
//  VideoListItemComponent.swift
//  Africa
//
//  Created by Ali on 14/09/2022.
//

import SwiftUI

struct VideoListItemComponent: View {
    //MARK: - PROPERTIES
    var video:Video
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
  
    
    var body: some View {
        HStack(spacing:10){
            Image(video.thumbnail)
                .resizable()
                .scaledToFit()
                .frame(height:60)
                .cornerRadius(8)
                .overlay{
                Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height:32)
                        .opacity(0.6)
                        .shadow(radius: 4)
                }
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)

            }

        }//: HSTACK
        
    }
}
//MARK: - PREVIEW
struct VideoListItemComponent_Previews: PreviewProvider {
    static let videos:[Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemComponent(video: videos[0])
            .previewDevice("iPhone 12")
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}

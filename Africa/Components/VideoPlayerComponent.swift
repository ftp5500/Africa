//
//  VodeoPlayerComponent.swift
//  Africa
//
//  Created by Ali on 15/09/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerComponent: View {
    //MARK: - PROPERTIES
     var video:Video
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            VideoPlayer(player: palyVideo(fileName: video.id, fileFormat: "mp4")){
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top,6)
                    .padding(.horizontal , 8)
                
                ,alignment: .topLeading
            )
        }//: VStack
        .accentColor(.accentColor)
        .navigationBarTitle(video.name , displayMode: .inline)
    }
}
//MARK: - PREVIEW
struct VideoPlayerComponent_Previews: PreviewProvider {
    static let videos:[Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        NavigationView {
            VideoPlayerComponent(video: videos[0])
        }
    } 
}


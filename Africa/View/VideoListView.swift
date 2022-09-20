//
//  VideoListView.swift
//  Africa
//
//  Created by Ali on 8/27/22.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
    @State var videos:[Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style:.medium)
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            List{
                ForEach(videos.shuffled()) { item in
                    NavigationLink {
                        VideoPlayerComponent(video: item)
                    } label: {
                        VideoListItemComponent(video: item)
                    }

                   
                }//: FORLOOP
            }//: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //: Shuffle Videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.triangle.2.circlepath")
                    }

                }
            }
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
    //MARK: - PREVIEW
    struct VideoListView_Previews: PreviewProvider {
        static var previews: some View {
            VideoListView()
        }
    }

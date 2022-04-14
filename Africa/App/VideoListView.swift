//
//  VideoListView.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - properties
    @State private var video = videos
    
    //MARK: - body
    var body: some View {
        NavigationView {
            List {
                ForEach(video) { vid in
                    NavigationLink(destination: VideoPlayerView(videoSelected: vid.id, videoTitle: vid.name), label: {
                        VideoListItem(video: vid)
                            .padding(.vertical, 8)
                    })
                }// : ForEach
            }// : List
            .listStyle(PlainListStyle())
            .navigationBarTitle("Video List", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        video.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }// : NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}

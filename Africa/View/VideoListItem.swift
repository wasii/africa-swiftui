//
//  VideoListItem.swift
//  Africa
//
//  Created by NaheedPK on 14/04/2022.
//

import SwiftUI

struct VideoListItem: View {
    let video: Videos
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .shadow(radius: 4)
            } // : ZStack
            VStack(alignment: .leading, spacing: 10, content: {
                Text(video.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            })
        } // : HStack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoListItem(video: videos[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

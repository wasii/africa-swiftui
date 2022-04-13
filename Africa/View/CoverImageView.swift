//
//  CoverImageView.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(12)
                    .padding(.top, 15)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}

//
//  VideoModel.swift
//  Africa
//
//  Created by NaheedPK on 14/04/2022.
//

import Foundation


struct Videos: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}

//
//  DataModal.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import Foundation
import SwiftUI


struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

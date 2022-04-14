//
//  Constant.swift
//  Africa
//
//  Created by NaheedPK on 13/04/2022.
//

import Foundation
import UIKit

let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
let animals: [Animal] = Bundle.main.decode("animals.json")
let videos: [Videos] = Bundle.main.decode("videos.json")



let hapticImpact = UIImpactFeedbackGenerator(style: .medium)

//
//  ParkLocation.swift
//  Africa
//
//  Created by NaheedPK on 14/04/2022.
//

import Foundation
import MapKit

struct ParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    //COMPUTED Property
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
//    "id" : "serengeti",
//    "name" : "Serengeti National Park",
//    "image" : "map-serengeti",
//    "latitude" : -2.3333333,
//    "longitude" : 34.8333333
}

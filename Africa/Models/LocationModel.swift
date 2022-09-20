//
//  LocationModel.swift
//  Africa
//
//  Created by Ali on 18/09/2022.
//

import Foundation
import MapKit

struct NationalParkLocation: Identifiable , Codable {
    var id:String
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}

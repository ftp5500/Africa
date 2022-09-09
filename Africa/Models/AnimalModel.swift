//
//  AnimalModel.swift
//  Africa
//
//  Created by Ali on 27/08/2022.
//

import Foundation
struct Animal:Codable, Identifiable {
    var id: String
    var name:String
    var headline:String
    var description:String
    var link:String
    var image:String
    var gallery:[String]
    var fact:[String]

}

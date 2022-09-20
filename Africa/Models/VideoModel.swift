//
//  VideoModel.swift
//  Africa
//
//  Created by Ali on 14/09/2022.
//

import Foundation
import SwiftUI

struct Video : Codable , Identifiable{
    var id:String
    var name:String
    var headline:String
    
    var thumbnail:String {
        "video-\(id)"
    }
    
    
}

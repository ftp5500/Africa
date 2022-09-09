//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ali on 8/27/22.
//



import Foundation

extension Bundle {
    func decode<T: Codable>(_ file:String) -> T  {
        
        //: Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Fail to locate \(file) in the bundle")
        }
        
        //: Create the property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Fail to load data \(file) in the bundle")
        }
        
        
        //: Create the decoder
        let decoder = JSONDecoder()
        
        
        //: Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Faild to decode \(file) from the bundle")
        }
        
     
        
        //: Return the ready-to-use data
        
        return loaded
    
        
    }
    
    
}



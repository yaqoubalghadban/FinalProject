//
//  stractCenter.swift
//  final
//
//  Created by Yaquob Alghadban  on 30/03/2022.
//

import Foundation

struct Centers:Identifiable{
    var id = UUID()
    var name : String
    var courses:[Course]
       
        
       
}
struct Course : Identifiable {
    var id = UUID()
    var name : String
    var price : Double
    var images: String
}
var MyCart :[Course] = []

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

var clubes = [Centers(name: "KCD", courses:[Course(name: "Open weater", price: 145.0, images: "Open water"), Course(name: "Advanced", price: 125.0, images:"Advanced"),Course(name: "Rescue", price: 100.0, images:"Rescue"),Course(name: "First aid", price: 65.0, images:"First aid"),Course(name: "Master", price: 165.0, images:"Master")]),Centers(name: "Dive 36", courses:[Course(name: "Open weater", price: 175.0, images: "Open water"), Course(name: "Advanced", price: 150.0, images:"Advanced"),Course(name: "Rescue", price: 100.0, images:"Rescue"),Course(name: "First aid", price: 85.0, images:"First aid"),Course(name: "Master", price: 240.0, images:"Master")]),Centers(name: "Octopus", courses:[Course(name: "Open weater", price: 180.0, images: "Open water"), Course(name: "Advanced", price: 160.0, images:"Advanced"),Course(name: "Rescue", price: 120.0, images:"Rescue"),Course(name: "First aid", price: 90.0, images:"First aid"),Course(name: "Master", price: 260.0, images:"Master")]),Centers(name: "THE ONE", courses:[Course(name: "Open weater", price: 160.0, images: "Open water"), Course(name: "Advanced", price: 130.0, images:"Advanced"),Course(name: "Rescue", price: 130.0, images:"Rescue"),Course(name: "First aid", price: 65.0, images:"First aid"),Course(name: "Master", price: 165.0, images:"Master")]),Centers(name: "Nautlius", courses:[Course(name: "Open weater", price: 195.0, images: "Open water"), Course(name: "Advanced", price: 140.0, images:"Advanced"),Course(name: "Rescue", price: 160.0, images:"Rescue"),Course(name: "First aid", price: 60.0, images:"First aid"),Course(name: "Master", price: 250.0, images:"Master")])]

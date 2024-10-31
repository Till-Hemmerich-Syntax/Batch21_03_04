//
//  Song.swift
//  Batch21_03_04
//
//  Created by Till Hemmerich on 31.10.24.
//

import Foundation

struct Song : Hashable,Identifiable{
    var id = UUID()
    var name : String
}


let songs = [
    Song(name: "Blinding Lights - The Weeknd"),
    Song(name: "Shape of You - Ed Sheeran"),
    Song(name: "Levitating - Dua Lipa"),
    Song(name: "Good 4 U - Olivia Rodrigo"),
    Song(name: "Stay - Justin Bieber")
]

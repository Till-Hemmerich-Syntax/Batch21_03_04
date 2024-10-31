//
//  SongPlayerView.swift
//  Batch21_03_04
//
//  Created by Till Hemmerich on 31.10.24.
//

import SwiftUI

struct SongPlayerView: View {
    var song : Song
    @Binding var navPath : NavigationPath

    var body: some View {
        
        VStack{
            Text(song.name)
            HStack{
                Button("⏮️"){
                navPath.removeLast()
                }
                Button("⏭️"){
                    navPath.append(songs.randomElement()!)
                }
                Button("HOME"){
                    navPath = NavigationPath()
                }
                Button("NewSongOhneHistory"){
                    navPath = NavigationPath()
                    navPath.append(songs.randomElement()!)
                }
                
            }
            Text("NavPathElemente: \(navPath.count)")
        }.font(.headline)
        
    }
}



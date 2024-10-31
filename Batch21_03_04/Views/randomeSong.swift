//
//  randomeSong.swift
//  Batch21_03_04
//
//  Created by Till Hemmerich on 31.10.24.
//

import SwiftUI

struct randomeSong: View {
    @State private var navPath = NavigationPath()
    var body: some View {
        NavigationStack(path:$navPath){
            VStack{
                Button("▶️"){
                    
                    navPath.append(songs.randomElement()!)
                  
                }
                NavigationLink("randomeSong", value: songs.randomElement()!)
            }
            .navigationDestination(for: Song.self) { song in
                SongPlayerView(song: song,navPath: $navPath)
            }
        }
    }
}

#Preview {
    randomeSong()
}

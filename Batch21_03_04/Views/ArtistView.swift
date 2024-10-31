//
//  ArtistView.swift
//  Batch21_03_04
//
//  Created by Till Hemmerich on 31.10.24.
//

import SwiftUI

struct ArtistView: View {
    var artist : Artist
    
    let songs = [
        Song(name: "Song1"),
        Song(name: "Song2"),
        Song(name: "Song3")
    ]
    var body: some View {
            HStack{
                ZStack {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.1)
                    Text(artist.name)
                        .font(.largeTitle)
                }
            }
            List{
                ForEach(songs){ song in
                    NavigationLink(song.name, value: song)
                }
            }
        }
}

#Preview {
        ArtistView(artist: Artist(name: "Till"))
}

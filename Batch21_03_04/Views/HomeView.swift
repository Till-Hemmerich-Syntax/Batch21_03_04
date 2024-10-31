//
//  HomeView.swift
//  Batch21_03_04
//
//  Created by Till Hemmerich on 31.10.24.
//

import SwiftUI

struct HomeView: View {
    
    let songs = [
        Song(name: "Perfect - The Weeknd"),
        Song(name: "Shape of You - Ed Sheeran"),
        Song(name: "Levitating - Dua Lipa")
    ]
    let artists = [
        Artist(name: "The Weeknd"),
        Artist(name: "Ed Sheeran"),
        Artist(name: "Dua Lipa")
    ]
    
    
    var body: some View {
        NavigationStack{
            List{
                Section("Song"){
                    ForEach(songs){song in
                        NavigationLink(value: song){
                            Label(song.name, systemImage: "waveform")
                        }
                    }
                }
                Section("Artists"){
                    ForEach(artists) { artist in
                        NavigationLink(artist.name, value: artist)
                    }
                }
            }.navigationDestination(for: Song.self) { song in
                SongView(song: song)
            }
            .navigationDestination(for: Artist.self) { artist in
                ArtistView(artist: artist)
            }
            
        }
    }
}

#Preview {
    HomeView()
}

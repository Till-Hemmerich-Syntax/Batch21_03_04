//
//  SongView.swift
//  Batch21_03_04
//
//  Created by Till Hemmerich on 31.10.24.
//

import SwiftUI

struct SongView: View {
    var song : Song
    var body: some View {
        ZStack {
                    Image(systemName: "waveform")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.1)
                    Text(song.name)
                        .font(.largeTitle)
                }
            }
}

#Preview {
    SongView(song: Song(name: "Test"))
}

//
//  SearchResult.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 20.12.23.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}

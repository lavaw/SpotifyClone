//
//  LibraryAlbumsResponse.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 22.01.24.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}

//
//  Playlist.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 29.11.23.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}

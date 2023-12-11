//
//  PlaylistsDetailsResponse.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 11.12.23.
//

import Foundation

struct PlaylistsDetailsResponse: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let `public`: Bool
    let tracks: PlaylistTracksResponse
}

struct PlaylistTracksResponse: Codable {
    let items: [PlaylistItem]
}

struct PlaylistItem: Codable {
    let track: AudioTrack
}

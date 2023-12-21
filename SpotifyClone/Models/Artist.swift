//
//  Artist.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 29.11.23.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}

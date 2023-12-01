//
//  SettingsModels.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 01.12.23.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}

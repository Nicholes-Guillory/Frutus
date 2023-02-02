//
//  FruiteModel.swift
//  Frutus
//
//  Created by Nicholes Guillory on 1/30/23.
//

import SwiftUI
import Foundation

// MARKL: - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

//
//  FruitModel.swift
//  UsingUI
//
//  Created by Ruchir on 7/26/21.
//

import SwiftUI

struct Fruit_Details: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var description: String
    var color: [Color]
}

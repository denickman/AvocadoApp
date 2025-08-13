//
//  FactModel.swift
//  Avocados
//
//  Created by Denis Yaremenko on 16.04.2024.
//

import Foundation
import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

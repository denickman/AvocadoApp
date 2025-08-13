//
//  HeaderModel.swift
//  Avocados
//
//  Created by Denis Yaremenko on 15.04.2024.
//

import Foundation
import SwiftUI

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

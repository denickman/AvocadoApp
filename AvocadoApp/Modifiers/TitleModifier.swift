//
//  TitleModifier.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 11.08.2025.
//

import Foundation
import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(Color.ColorGreenAdaptive)
            .padding(8)
    }
}

//
//  IconModifier.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 11.08.2025.
//

import Foundation
import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 20, height: 20, alignment: .center)
    }
}

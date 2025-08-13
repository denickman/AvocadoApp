//
//  ReceipeCookingView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 13.08.2025.
//

import SwiftUI

struct RecipeCookingView: View {
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Serves: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Serves: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundStyle(.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}

//
//  RecipeRatingView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 13.08.2025.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...recipe.rating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}

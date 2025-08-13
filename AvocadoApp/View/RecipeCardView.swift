//
//  RecipeCardView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 13.08.2025.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - Properties
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // card image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                
                // title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // rating
                RecipeRatingView(recipe: recipe)
                
                // cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}

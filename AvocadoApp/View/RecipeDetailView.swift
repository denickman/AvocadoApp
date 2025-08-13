//
//  RecipeDetailView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 13.08.2025.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    @State private var pulsate = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                Group {
                    // title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // rating
                    RecipeRatingView(recipe: recipe)
                    
                    // Cooking
                    RecipeCookingView(recipe: recipe)
                    
                    // Ingridients
                    Text("Ingridients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingridients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                            }
                        }
                    }
                    
                    // instructions
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                            
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .onAppear {
            pulsate.toggle()
        }
        
        .ignoresSafeArea()
        .overlay(alignment: .topTrailing, content: {
            Button(action: {
                // action
               dismiss()
            }, label:  {
                Image(systemName: "chevron.down.circle.fill")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .shadow(radius: 2)
                    .opacity(pulsate ? 1 : 0.8)
                    .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
        })
            .padding(.trailing, 20)
            .padding(.top, 24)
        })
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}

//
//  RecipeView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 12.08.2025.
//

import SwiftUI

struct RecipeView: View {
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // Dishes
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                Dishesview()
                    .frame(maxWidth: 640)
                
                // avocado facts
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                // recipe cards
                
                Text("Avocado recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                // footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                       
                    Text("Everything you want to know about avocados, but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RecipeView()
}

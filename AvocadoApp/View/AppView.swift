//
//  AppView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 12.08.2025.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            RecipeView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeStageView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .tint(.primary)
    }
}

#Preview {
    AppView()
}

//
//  AvocadoView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 11.08.2025.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulsateAnimation = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color.ColorBlackTransparentDark, radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1: 0.9)
                .opacity(pulsateAnimation ? 1 : 0.75)
                .animation(
                    .easeInOut(duration: 1)
                    .repeatForever(autoreverses: true),
                    value: pulsateAnimation
                )
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(Color.ColorGreenLight)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
                
                Text("""
                     Creamy, green, and full of nutrients!
                     Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                    """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundStyle(Color.ColorGreenLight)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            Spacer()
        }
        
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .ignoresSafeArea(.container, edges: [.top, .leading, .trailing])
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

#Preview {
    AvocadosView()
        .environment(\.colorScheme, .dark)
}





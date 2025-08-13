//
//  FactsView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 13.08.2025.
//

import SwiftUI

struct FactsView: View {
    
    let fact: Fact
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .padding()
                .frame(width: 300, height: 140, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(
                        colors: [
                            Color("ColorGreenMedium"),
                            Color("ColorGreenLight")
                        ]),
                                   startPoint: .leading,
                                   endPoint: .trailing
                    )
                )
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundStyle(.white)
            
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(.circle)
            // overlay
                .overlay {
                    Circle()
                        .stroke(
                            LinearGradient(
                                gradient: Gradient(colors: [.yellow, .orange, .green, .red]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 5
                        )
                }
            
            // background
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 78, height: 78)
                )
                .offset(x: -150)
        }
    }
}

#Preview {
    FactsView(fact: factsData[0])
}

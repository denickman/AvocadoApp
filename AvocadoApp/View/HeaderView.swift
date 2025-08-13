//
//  HeaderView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 13.08.2025.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var showHeadline = false
    
    var header: Header
    
    var slideInAnimation: Animation {
        .spring(response: 1.5, dampingFraction: 0.4, blendDuration: 0.9)
        .speed(1)
        .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: .zero) {
                
                Rectangle()
                    .fill(.orange)
                    .frame(width: 40)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation, value: showHeadline)
            .onAppear {
                showHeadline = true
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

#Preview {
    HeaderView(header: headersData[1])
        .environment(\.colorScheme, .dark)
}

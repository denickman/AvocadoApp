//
//  DishesView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 12.08.2025.
//

import SwiftUI


struct Dishesview: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            // 1st column
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack() {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack() {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack() {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            // 2nd column
//            VStack(alignment: .center, spacing: 16) {
//                HStack {
//                    Divider()
//                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
//                HStack {
//                    Divider()
//                }
//            }
            
            // 3rd column
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack() {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct Dishesview_Preview: PreviewProvider {
    static var previews: some View {
        Dishesview()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}



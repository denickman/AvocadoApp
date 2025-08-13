//
//  SettingsView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 12.08.2025.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // section 1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                // section 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone/iPad")
                        }
                        
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Denis Yaremenko")
                        }
                        
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Miles")
                        }
                        
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy 🖕🏿 coding")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

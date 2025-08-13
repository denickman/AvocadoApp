//
//  RipeStageView.swift
//  AvocadoApp
//
//  Created by Denis Yaremenko on 12.08.2025.
//

import SwiftUI

struct RipeStageView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              //  Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                       RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
              //  Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RipeStageView()
}

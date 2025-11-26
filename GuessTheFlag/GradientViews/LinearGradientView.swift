//
//  GradientView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct LinearGradientView: View {
    var body: some View {
        ZStack {
            
            // Gradient Stops
            LinearGradient(stops: [
                .init(color: .white, location: 0.45),
                .init(color: .black, location: 0.55)
            ], startPoint: .top, endPoint: .bottom)
            
            // Gradient Colors
            // LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
            Text("Your Content")
        }
    }
}

#Preview {
    LinearGradientView()
}

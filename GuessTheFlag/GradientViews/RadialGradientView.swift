//
//  RadialGradientView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct RadialGradientView: View {
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: .white, location: 0.45),
                .init(color: .black, location: 0.55)
            ], center: .center, startRadius: 20, endRadius: 200)
        }
    }
}

#Preview {
    RadialGradientView()
}

//
//  AngularGradientView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct AngularGradientView: View {
    var body: some View {
        ZStack {
            AngularGradient(colors: [.red, .blue, .yellow, .green], center: .center)
            Text("Hello, World!")
        }
    }
}

#Preview {
    AngularGradientView()
}

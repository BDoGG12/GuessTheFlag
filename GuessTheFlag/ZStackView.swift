//
//  ZStackView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ZStackView()
}

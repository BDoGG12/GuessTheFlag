//
//  HStackView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack(spacing: 20) {
            Text("Hello, World!")
            Text("This is another greeting!")
        }
    }
}

#Preview {
    HStackView()
}

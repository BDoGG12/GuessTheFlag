//
//  AlertView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/25/25.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false
    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert("Important Message", isPresented: $showAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this")
        }
    }
}

#Preview {
    AlertView()
}

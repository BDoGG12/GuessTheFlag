//
//  ButtonView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/25/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button("Deleting Selection", role: .destructive, action: deleteSelection)
    }
    
    func deleteSelection() {
        print("Now deleting...")
    }
}

#Preview {
    ButtonView()
}

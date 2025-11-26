//
//  BuiltInButtonStyleView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/25/25.
//

import SwiftUI

struct BuiltInButtonStyleView: View {
    var body: some View {
        VStack {
            // bordered and bordered prominent button styles
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)
            
            // customize color of the button
            Button("Button 3") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            Button {
                print("Custom Button")
            } label: {
                Text("Custom Button")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
                    .cornerRadius(10)
            }

            
        }
    }
}

#Preview {
    BuiltInButtonStyleView()
}
